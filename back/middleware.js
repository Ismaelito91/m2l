const jwt = require("jsonwebtoken");

function verifyToken(req, res, next) {
    const authHeader = req.headers.authorization;

    if (authHeader) {
        const parts = authHeader.split(" ");
        
        if (parts.length === 2 && parts[0] === "Bearer") {
            const token = parts[1];

            jwt.verify(token, process.env.JWT_SECRET, (err, user) => {
                if (err) {
                    console.log("🚀 ~ jwt.verify ~ err:", err);
                    res.status(403).json("Token Invalid!");
                    return;
                }

                req.user = user;
                next();
            });
        } else {
            res.status(400).json("Authorization header format must be 'Bearer <token>'");
        }
    } else {
        res.status(401).send("Should Login First!");
    }
}

function isAdmin(req, res, next) {
    verifyToken(req, res, () => {
        console.log("🚀 ~ verifyToken ~ req.user:", req.user);
        if (req.user.fonction === "admin") {
            return next();
        } else {
            return res.status(403).send({ success: false, message: "Accès non autorisé" });
        }
    });
}

module.exports = {
    verifyToken,
    isAdmin
};

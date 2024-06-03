import React, { useState, useEffect } from "react";
import api from "../../../api";
import "./commande.css";

const CommandePage = () => {
  const [commandes, setCommandes] = useState([]);
  const [currentDateTime, setCurrentDateTime] = useState(new Date());
  const token = localStorage.getItem("token");

  useEffect(() => {
    const fetchCommandes = () => {
      api
        .getCommandes(token)
        .then((response) => {
          if (response.data) {
            setCommandes(response.data.commands);
          }
        })
        .catch((error) => {
          console.error("Erreur lors de la récupération des commandes:", error);
        });
    };

    fetchCommandes();
  }, [token]);

  useEffect(() => {
    const intervalId = setInterval(() => {
      setCurrentDateTime(new Date());
    }, 1000);

    return () => clearInterval(intervalId);
  }, []);

  const formatDate = (dateString) => {
    const date = new Date(dateString);
    return `${date.toLocaleDateString()} ${date.toLocaleTimeString()}`;
  };

  return (
    <div>
      <p className="p-2">Heure actuelle : <span className="fw-bold">{currentDateTime.toLocaleDateString()} {currentDateTime.toLocaleTimeString()}</span></p>
      {commandes &&
        commandes.map((commande, index) => (
          <div className="cont" key={index}>
            <p className="p-2">Commande effectuée le : <span className="fw-bold">{formatDate(commande.date)}</span></p>
            <table className="table rounded-4 m-0">
              <thead>
                <tr>
                  <th>Nom</th>
                  <th>Quantité</th>
                  <th>Prix</th>
                </tr>
              </thead>
              <tbody>
                {commande.produits.map((produit, produitIndex) => (
                  <tr key={produitIndex}>
                    <td><img src={produit.image} alt="" /> {produit.nom}</td>
                    <td>{produit.quantity}</td>
                    <td>{produit.prix} €</td>
                  </tr>
                ))}
                <tr>
                  <td colSpan="2" className="text-end border-bottom-0">Total</td>
                  <td className="border-bottom-0">{commande.produits.reduce((acc, produit) => acc + produit.prix * produit.quantity, 0)} €</td>
                </tr>
              </tbody>
            </table>
          </div>
        ))}
    </div>
  );
};

export default CommandePage;

import { defineConfig } from 'vite'
import react from '@vitejs/plugin-react'

// https://vitejs.dev/config/
export default defineConfig({
  plugins: [react()],
  server: {
    proxy: {
      '/api': 'http://192.168.1.29:3000',
    },
  },
  resolve: {
    mainFields: [],
  },
})


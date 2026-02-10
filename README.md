# 🏛️ Αξιοθέατα Βροντάδου - Interactive Map

An elegant, interactive map showcasing the historical and cultural attractions of Vrontados, Chios, Greece.

## 🗺️ Overview

This project is a web-based interactive map designed to help visitors explore the beautiful landmarks of Vrontados. Built with modern web technologies and the Google Maps API, it offers a seamless and informative experience.

## ✨ Features

- **Interactive Map:** Powered by Google Maps API with custom dark-themed styling.
- **7 Selected Attractions:** Curated list of historical and cultural sites with detailed descriptions.
- **Modern UI:** Responsive design featuring glassmorphism and smooth animations.
- **Mobile-Friendly:** Optimized for both desktop and mobile devices.
- **Dockerized:** Ready for easy deployment using Nginx and Docker.

## 🛠️ Tech Stack

- **Frontend:** HTML5, CSS3 (Inter font, Glassmorphism), JavaScript (ES6+).
- **Map Service:** Google Maps JavaScript API.
- **Web Server:** Nginx (Alpine-based).
- **Containerization:** Docker.

## 📍 Featured Attractions

1. **Μονή Μυρσινιδίου** - A historic monastery with panoramic Aegean views.
2. **Όρμος Λω** - A traditional bay with modern nautical facilities.
3. **Μνημείο Ψυχάρη** - Monument dedicated to the linguist Giannis Psycharis.
4. **Δασκαλόπετρα (Πέτρα του Ομήρου)** - The legendary teaching site of Homer.
5. **Μύλοι (Τάμπακικα)** - Iconic windmills of the Vrontados coastline.
6. **Αφανής Ναύτης** - A tribute to the town's rich maritime heritage.
7. **Βιβλιοθήκη "Άγιος Αγαπητός"** - A cultural and spiritual center.

## ⚙️ Configuration

The application requires a Google Maps API key to function correctly.

1. Copy the example configuration file:
   ```bash
   cp config.example.js config.js
   ```
2. Edit `config.js` and replace `"YOUR_API_KEY_HERE"` with your valid Google Maps API key.

> **Security Note:** `config.js` is git-ignored to prevent accidental exposure of your API credentials.

## 🚀 Getting Started

### Local Development

#### Using Python (Quick Start)
```bash
python3 -m http.server 8080
```
Then open `http://localhost:8080` in your browser.

#### Using Docker
1. Build the image:
   ```bash
   docker build -t vrontados-map .
   ```
2. Run the container:
   ```bash
   docker run -p 8080:8080 vrontados-map
   ```
Access the application at `http://localhost:8080`.

## ☁️ Deployment

### Google Cloud Run

This project is configured for easy deployment to Google Cloud Run.

#### Option 1: Command Line
```bash
gcloud run deploy vrontados-map \
  --source . \
  --region europe-west1 \
  --allow-unauthenticated
```

#### Option 2: Continuous Deployment
Connect your GitHub repository to Cloud Run for automated builds and deployments on every push.

## 📁 Project Structure

- `index.html`: Main application file (HTML/CSS/JS).
- `nginx.conf`: Nginx configuration for serving the app and handling compression.
- `Dockerfile`: Instructions for building the Docker image.
- `README.md`: Documentation (you are here).

## 📝 License

This project is open-source. Feel free to use and modify it for your needs.

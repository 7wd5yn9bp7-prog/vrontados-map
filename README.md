# Αξιοθέατα Βροντάδου - Interactive Map

An interactive map showcasing the historical and cultural attractions of Vrontados, Chios, Greece.

## 🗺️ Features

- Interactive Google Maps with 7 marked attractions
- Dark-themed modern UI with glassmorphism design
- Responsive layout for mobile and desktop
- Click-to-explore attraction cards

## 🚀 Deploy to Google Cloud Run

### Option 1: Deploy from Source
```bash
gcloud run deploy vrontados-map \
  --source . \
  --region europe-west1 \
  --allow-unauthenticated
```

### Option 2: Connect GitHub Repo
1. Go to [Cloud Run Console](https://console.cloud.google.com/run)
2. Click "Create Service"
3. Select "Continuously deploy from a repository"
4. Connect your GitHub repo
5. Select this repository and branch

## 📍 Attractions

1. Μονή Μυρσινιδίου
2. Όρμος Λω
3. Τάφος Γιάννη Ψυχάρη
4. Δασκαλόπετρα (Πέτρα του Ομήρου)
5. Μύλοι (Τάμπακικα)
6. Αφανής Ναύτης
7. Βιβλιοθήκη "Άγιος Αγαπητός"

## 🛠️ Local Development

```bash
python3 -m http.server 8080
# Open http://localhost:8080
```

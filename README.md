<div align="center">

<img src="https://img.shields.io/badge/Platform-iOS%2016%2B-1A3C6E?style=for-the-badge&logo=apple&logoColor=white" />
<img src="https://img.shields.io/badge/Swift-5.9-F05138?style=for-the-badge&logo=swift&logoColor=white" />
<img src="https://img.shields.io/badge/SwiftUI-Framework-27AE60?style=for-the-badge&logo=swift&logoColor=white" />
<img src="https://img.shields.io/badge/Architecture-MVVM-8E44AD?style=for-the-badge" />
<img src="https://img.shields.io/badge/Status-In%20Progress-E67E22?style=for-the-badge" />

<br/><br/>

# 🚌 Employee Transport App — iOS

### A corporate cab booking & live tracking app built with SwiftUI
*Book rides, track your cab in real-time, and manage your daily commute — all from one place.*

<br/>

</div>

---

## 📱 Screenshots

> Coming soon — simulator screenshots will be added here

---

## ✨ Features

- 🔐 **Secure Login** — Employee authentication with mock JWT flow
- 🏠 **Smart Dashboard** — View today's ride status at a glance
- 🚖 **Book a Ride** — Pick pickup point, destination & time slot
- 🗺️ **Live Tracking** — Real-time cab location on MapKit
- 📋 **Ride History** — View past trips with status (Completed / Cancelled)
- 👤 **Profile Management** — Employee details and preferences

---

## 🛠️ Tech Stack

| Layer | Technology |
|---|---|
| UI Framework | SwiftUI |
| Architecture | MVVM |
| Maps | MapKit |
| Networking | URLSession + async/await |
| Local Storage | UserDefaults |
| Language | Swift 5.9 |
| Minimum iOS | iOS 16+ |

---

## 🚀 Getting Started

### Prerequisites

- macOS 13+ (Ventura or later)
- Xcode 15+
- iOS Simulator or physical iPhone running iOS 16+

### Installation

**1. Clone the repository**
```bash
git clone https://github.com/shauryaverma03/Transport-App.git
cd Transport-App
```

**2. Open in Xcode**
```bash
open MoveInSync.xcodeproj
```

**3. Select a simulator**

In Xcode, select any iPhone simulator from the top device menu (iPhone 15 Pro recommended)

**4. Build & Run**

Press `Cmd + R` or click the ▶ Play button

> ⚠️ No API keys or third-party dependencies required — runs fully offline with mock data.

---

## 📁 Project Structure

```
MoveInSync/
├── Models/
│   ├── RideModel.swift          # Ride data structure
│   └── Extensions.swift         # Color hex extension
├── ViewModels/
│   └── RideViewModel.swift      # Business logic layer
├── Views/
│   ├── LoginView.swift          # Authentication screen
│   ├── HomeView.swift           # Dashboard
│   ├── BookRideView.swift       # Ride booking flow
│   ├── TrackingView.swift       # Live map tracking
│   └── RideHistoryRow.swift     # Reusable ride row component
├── Assets.xcassets/             # App icons & colors
└── MoveInSyncApp.swift          # App entry point
```

---

## 🏗️ Architecture — MVVM

```
View  ──────▶  ViewModel  ──────▶  Model
  ▲                │
  └────────────────┘
     (State updates via @Published)
```

- **Model** — Plain Swift structs (RideModel, UserModel)
- **ViewModel** — Business logic, state management with `@ObservableObject`
- **View** — Pure SwiftUI, reads from ViewModel via `@StateObject` / `@ObservedObject`

---

## 🗺️ App Flow

```
Splash Screen
     │
     ▼
Login Screen ──── (mock auth) ────▶ Home Dashboard
                                          │
                          ┌───────────────┼───────────────┐
                          ▼               ▼               ▼
                    Book a Ride     Live Tracking     Ride History
```

---

## 🔮 Roadmap

- [ ] Real backend integration (REST API)
- [ ] Push notifications for cab arrival
- [ ] Driver rating system
- [ ] OTP-based login
- [ ] Dark mode support
- [ ] Apple Maps route drawing with ETA

---

## 🤝 Contributing

Pull requests are welcome! For major changes, please open an issue first to discuss what you'd like to change.

1. Fork the repo
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

---

## 👨‍💻 Author

**Shaurya Verma**
- Portfolio: [shauryaverma.online](https://shauryaverma.online)
- GitHub: [@shauryaverma03](https://github.com/shauryaverma03)

---

## 📄 License

This project is licensed under the MIT License — see the [LICENSE](LICENSE) file for details.

---

<div align="center">
  <sub>Built with ❤️ using SwiftUI</sub>
</div>

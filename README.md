# 📱 Zakker

**Zakker** is an all-in-one Islamic app offering prayer times, Quran, and daily Azkar in a simple and user-friendly interface.

---

## ✨ Features
- **Quran**: Complete Holy Quran with clear Arabic text and easy navigation between surahs.
- **Prayer Times**: Accurate prayer times based on your location, updated daily.
- **Azkar**: Azkar displayed randomly throughout the day.
- **User-Friendly Interface**: Simple and intuitive design for easy navigation.

---

## 🛠 Technologies Used
- **Flutter**: For building a cross-platform app.
- **State Management**: [Bloc](https://pub.dev/packages/flutter_bloc) for managing app state.
- **API**: For fetching prayer times.

---

## 📁 Folder Structure

The app follows the **MVVM (Model-View-ViewModel)** architecture. Here's the folder structure:

```
lib/
├── core/
│ ├── utils/ # Utility functions and helpers
│ ├── helper/
│ └── error/ # Error handling and custom exceptions
├── features/
│ ├── home/ # Home screen feature
│ │ ├── data/ # Data layer (repos, models)
│ │ └── presentation/ # Presentation layer (views, manager)
│ │ ├── views/ # UI components
│ │ └── manager/ # Cubits for state management
│ ├── doaa/ # doaa feature
│ │ ├── data/
│ │ └── presentation/
│ ├── salah/ # salah feature
│ │ ├── data/
│ │ └── presentation/
│ └── sebha/ # sebha feature
│ ├── data/
│ └── presentation/
└── main.dart # App entry point

```
## 🧭 OS Support

At present, we officially aim to support the last two versions of the following operating systems:

[<img src="https://raw.githubusercontent.com/creativetimofficial/ct-material-kit-pro-react-native/master/assets/android-logo.png" width="60" height="60" />](https://www.creative-tim.com/product/now-ui-pro-react-native)
[<img src="https://raw.githubusercontent.com/creativetimofficial/ct-material-kit-pro-react-native/master/assets/apple-logo.png" width="60" height="60" />](https://www.creative-tim.com/product/now-ui-pro-react-native)


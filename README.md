# Flutter BoilerPlate

[![Flutter Version](https://img.shields.io/badge/flutter-v2.5.2-blue.svg)](https://flutter.dev/docs/get-started/install) [![Dart Version](https://img.shields.io/badge/dart-v2.14.3-blue.svg)](https://dart.dev/) [![License](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE.md)

## Description

The **Flutter Mobile App Boilerplate** is a powerful starting point for building cross-platform mobile applications using the Flutter framework. This boilerplate provides a solid foundation and a set of pre-configured features, allowing developers to quickly kickstart their app development process. Whether you're a beginner or an experienced developer, this boilerplate offers a structured and scalable architecture to accelerate your Flutter app development.

## Getting Started

These instructions will help you get a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

- **Flutter SDK**: [Installation Guide](https://flutter.dev/docs/get-started/install)
- **Android Studio and Android SDK** (For Android)
- **Java Development Kit (JDK)** (For Android)
- **Xcode** (For macOS) 

### Installing

1. **Clone the repository:**

```bash
git clone <https://github.com/erazoor/flutter_mobile_app_boilerplate>
```

2. **Install Dependencies:**

```bash
flutter pub get
```

3. **Set Up Emulators or Physical Devices:**

- If you don't have any **emulators** or **physical devices** set up, follow the respective IDE's instructions to configure and create emulators/simulators for Android and iOS.
- Connect **physical devices** via **USB** and ensure they are recognized by your development machine.

4. **Rename the project:**

```bash
flutter pub global activate rename
```

```bash
flutter pub global run %NEW_NAME% --bundleId com.example.%NEW_NAME%
```

5. **Run the project:**

```bash
flutter run
```

If you have multiple devices connected, specify the target device using the `-d` flag followed by the device **ID** or **name**.

```bash
flutter run -d %DEVICE_NAME%
```

## Author

- [erazoor](https://github.com/erazoor)

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE.md) file for details.

## Acknowledgments

- [Flutter](https://flutter.dev/)
- [Dart](https://dart.dev/)

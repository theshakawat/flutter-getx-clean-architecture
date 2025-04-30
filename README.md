## About the Project

This project demonstrates a Flutter application built using **GetX** for state management and dependency injection, combined with **Clean Architecture** principles. The goal is to create a scalable, maintainable, and modular application structure that adheres to best practices in software development.

The app is designed to be a foundation for developers who want to build robust applications while maintaining separation of concerns and testability.

---

## Features

- **State Management**: Powered by GetX for efficient and reactive state management.
- **Dependency Injection**: Simplified dependency injection using GetX's `Get.put()` and `Get.lazyPut()`.
- **Modular Design**: Clean Architecture layers ensure separation of concerns.
- **Scalability**: Easy to extend and maintain due to modular folder structure.

---

## Technologies Used

- **Flutter**: Cross-platform framework for building mobile applications.
- **GetX**: Lightweight state management and dependency injection library.
- **Clean Architecture**: Modular and maintainable architecture design.
- **Dart**: Programming language used for Flutter development.
- **HTTP**: For making API requests.

---

## Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/theshakawat/flutter-getx-clean-architecture.git
   ```

2. Navigate to the project directory:
   ```bash
   cd flutter-getx-clean-architecture
   ```

3. Install dependencies:
   ```bash
   flutter pub get
   ```

4. Run the app:
   ```bash
   flutter run
   ```

---

## Usage

To use this project as a template for your own app:

1. Replace the domain-specific logic in the `domain` layer with your business rules.
2. Update the `data` layer to interact with your APIs or databases.
3. Customize the `presentation` layer to match your app's UI/UX requirements.

---

## Contributing

We welcome contributions from the community! To contribute:

1. Fork the repository.
2. Create a new branch (`git checkout -b feature/YourFeatureName`).
3. Commit your changes (`git commit -m 'Add some feature'`).
4. Push to the branch (`git push origin feature/YourFeatureName`).
5. Open a pull request.
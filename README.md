# Task_app: Professional Task Management System

### Project Overview

Task_app is a robust, production-ready task management application designed to handle daily productivity with ease. Built with a focus on performance and security, the app features a seamless authentication flow, real-time state synchronization, and a premium UI experience.

---

## Architecture & Design Patterns

I implemented the **MVVM (Model-View-ViewModel)** architecture using the **Provider** pattern.

### Why MVVM?

- **Separation of Concerns:** By decoupling the UI (Views) from the Business Logic (Providers/ViewModels), the code remains clean and testable.
- **Reusability:** The Logic layer (TaskProvider) can be reused across different UI components without modification.
- **Scalability:** Adding new features like "Task Categories" or "Tags" can be done by simply extending the Model and Provider without breaking existing UI.

---

## Features

- **Secure Authentication:** Token-based session management using hardware-encrypted storage.
- **Full CRUD Operations:**
  - **Create:** Dynamic task creation with validation.
  - **Read:** Instant data fetching with pull-to-refresh support.
  - **Update:** Toggle task completion with visual strikethrough feedback.
  - **Delete:** Intuitive swipe-to-delete gestures with SnackBar confirmation.
- **Advanced Date Selection:** Integrated DatePicker for deadline management.
- **Shimmer Loading:** Custom "Skeleton" screens to reduce perceived latency and provide a premium feel.

---

## Tech Stack & Packages

| Layer                | Technology                 | Rationale                                                                                                 |
| :------------------- | :------------------------- | :-------------------------------------------------------------------------------------------------------- |
| **State Management** | **Provider**               | Chosen for its efficiency in handling rebuilds and clear dependency injection.                            |
| **Networking**       | **Dio**                    | Selected over standard 'http' for built-in Interceptors, global configuration, and better error handling. |
| **Secure Storage**   | **Flutter Secure Storage** | Ensures sensitive Auth Tokens are stored in Keychain (iOS) and Keystore (Android).                        |
| **UI Enhancements**  | **Shimmer**                | Provides a modern "skeleton" loading state used by top-tier apps.                                         |
| **Formatting**       | **Intl**                   | Handles date parsing and human-readable formatting for task deadlines.                                    |

---

## 📂 Project Structure

```text
lib/
├── models/         # Data blueprints (Task, User)
├── providers/      # ViewModels (State logic & API calls)
├── services/       # Core Logic (Dio Client, Secure Storage)
├── screens/        # UI Layers (Login, Home, TaskSheet)
└── main.dart       # Entry point and Global Provider setup
How to Run the App
Follow these steps to set up the project locally:

Clone the project:

Bash
git clone <your-repo-link>
cd task_app
Install Dependencies:

Bash
flutter pub get
Run the Application:
Ensure you have an emulator running or a physical device connected:

Bash
flutter run
Troubleshooting & Environment Check
If you encounter issues while trying to run the application, follow these diagnostic steps:

System Health Check:

Bash
flutter doctor
Look for "No issues found". If there are errors, ensure your Android SDK or Flutter path is correctly configured.

Detect Connected Devices:

Bash
flutter devices
Verify that Flutter recognizes your physical device or emulator.

Common Build Issues:
If you experience "Package not found" or "Build failed":

Bash
flutter clean
flutter pub get
📦 Submission & APK
The pre-built release APK is ready for testing and can be found at:
👉 app-release.apk (located in the root directory)

Submitted as part of the Technical Assessment for the Flutter Developer intern role
```

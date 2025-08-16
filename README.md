# Template iOS Application

This project is a template iOS application built with SwiftUI, demonstrating a clean code architecture with separated concerns.

## Project Structure

The project is organized into the following main directories:

- `Models`: Contains data models used throughout the application.
- `Navigation`: Handles the navigation logic and routing within the app.
- `Theme`: Manages the application's theme and appearance settings.
- `Utils`: Contains utility functions and helper classes, such as `MockData`.
- `Views`:
    - `Authentication`: Views related to user authentication (Login, Register, Forgot Password).
    - `Common`: Reusable UI components like `SearchBar` and `EmptyStateView`.
    - `Home`: The main home screen view.
    - `Item`: Views related to item details, adding, and editing.
    - `MainTab`: Contains the `MainTabView` and `Tab` enum for the main tab bar.
    - `Modifiers`: Custom ViewModifiers for consistent styling (e.g., `ModernButtonStyle`, `ModernCardStyle`, `ModernTabViewStyle`).
    - `Onboarding`: Onboarding screens for new users.
    - `Profile`: User profile view.
    - `Search`: Search functionality view.
    - `Settings`: Application settings view.
- `Extensions`: Contains extensions to existing types (e.g., `Color+Extension`).

## How to Run the Project

To run this project, you will need Xcode installed on your macOS machine.

1.  **Clone the repository (if applicable):**
    ```bash
    git clone <repository_url>
    cd Template
    ```

2.  **Open the project in Xcode:**
    Navigate to the project directory and open the `.xcodeproj` file:
    ```bash
    open Template.xcodeproj
    ```

3.  **Select a Simulator or Device:**
    In Xcode, select your desired iPhone simulator or a connected iOS device from the scheme dropdown menu.

4.  **Build and Run:**
    Click the "Run" button (the play icon) in the Xcode toolbar, or press `Cmd + R`.

Xcode will build the project and launch the application on the selected simulator or device.

## Features Implemented

-   **Clean Code Architecture**: Separation of concerns into distinct modules.
-   **Navigation**: Centralized navigation management using `NavigationRouter`.
-   **Theming**: Dynamic theme switching (light/dark mode) with `ThemeManager`.
-   **Tab-based Navigation**: Main application structure uses a tab bar.
-   **Item Management**: Views for displaying, adding, and editing items.
-   **Search Functionality**: Search bar with mock data filtering.
-   **User Profiles**: Basic profile view with mock user data.
-   **Authentication Flows**: Placeholder views for Login, Register, and Forgot Password.
-   **Onboarding**: Simple onboarding flow.
-   **Reusable UI Components**: Common UI elements and custom view modifiers for consistent styling.

## Dependencies

This project primarily uses SwiftUI and does not have external third-party dependencies managed by CocoaPods or Swift Package Manager in this initial setup. All components are built using native SwiftUI frameworks.

## Contributing

Feel free to fork this repository and contribute.
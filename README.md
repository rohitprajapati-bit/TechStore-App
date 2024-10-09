

# TechStore App

A Flutter-based e-commerce application that loads product data from local JSON files and provides user authentication. The app features a product catalog, detailed product views, and a secure login system.

## Table of Contents

- [Features](#features)
- [Technology Stack](#technology-stack)
- [Architecture](#architecture)
- [State Management](#state-management)
- [Pages and Functionality](#pages-and-functionality)
- [Setup](#setup)
- [Screenshots](#screenshots)
- [Contributors](#contributors)
- [License](#license)

## Features

- **User Authentication**: Login functionality using locally stored credentials.
- **Product Catalog**: Loads product data from a local JSON file.
- **Product Details**: Detailed product view loaded from JSON data.
- **Responsive UI**: Optimized for both mobile and tablet.
- **MVVM Architecture**: Clear separation between UI and business logic.

## Technology Stack

- **Framework**: Flutter
- **Language**: Dart
- **State Management**: Provider
- **Data Source**: Local JSON for products and product details.

## Architecture

The app follows the MVVM (Model-View-ViewModel) architecture to ensure a clean separation of concerns between UI and business logic.

### Key Components:

- **Model**: Manages data from JSON files (products and details).
- **View**: UI components like product listings, login, and details screens.
- **ViewModel**: Connects the Model with the View, handling user actions and data processing.

## State Management

The app uses the **Provider** package for state management, ensuring a reactive UI that updates based on changes in data.

## Pages and Functionality

### Authentication Page

- **Login Page**: Allows users to log in using pre-defined credentials stored locally. Basic form validation ensures correct inputs.

### Product Catalog

- **Product List Page**: Loads and displays products from a local JSON file.
- **Filtering**: Products can be filtered based on categories.

### Product Details

- **Product Details Page**: Displays detailed information about a selected product, including images, description, and pricing.
- Data for the details page is also loaded from a local JSON file.


## Setup

To set up and run the project locally, follow these steps:

1. **Clone the repository**:

   ```bash
   git clone https://github.com/your-username/techstore-app.git
   ```

2. **Navigate to the project directory**:

   ```bash
   cd techstore-app
   ```

3. **Install dependencies**:

   ```bash
   flutter pub get
   ```

4. **Run the app**:

   ```bash
   flutter run
   ```

## Contributors

- **Rohit Prajapati** - Junior Developer

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.


## Android Screenshots


![Untitled design](https://github.com/user-attachments/assets/2d4acfb4-9ee7-4028-8fb9-47b80df60224)



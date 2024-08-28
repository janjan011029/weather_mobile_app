# Weather Mobile App

Hi, I'm Jaime Jr. Aballe. This guide will help you set up and run the Weather Mobile App project.

## Getting Started

### Step 1: Clone the Project

First, clone this project to your local machine:

```bash
git clone https://github.com/janjan011029/weather_mobile_app.git
cd weather_mobile_app
```

### Step 2: Clean and Get Dependencies

Navigate to the main folder and run the following commands:

```bash
flutter clean && flutter pub get && flutter packages pub run build_runner build
```

### Step 3: Create a .env File

Before running the app, you need to create a .env file inside the send_money_app folder. Add the following line to the file:

```env
API_KEY=your_api_key_here
API_ENDPOINT=your_api_endpoint_here
APP_ID=your_app_id_here
```

Replace your_api_key_here,your_api_endpoint_here,your_app_id_here with the value provided in the message I sent to you.

### Step 4: Run the Application

After setting up the .env file, you can run the app:

```bash
    flutter run --dart-define-from-file=.env
```

Or just go to the VSCode Run and Debug Icon in your Upper left side

### Step 5: Running Unit Tests

To run the unit tests, execute the following command in your terminal:

```bash
    flutter test test/unit_test/features/weather
```

Alternatively, you can navigate to the specific test files in your IDE and press the run button to view the detailed results of the unit tests.

## Features

*  Weather Feature: Provides an updated weather forecast based on your phone's location, covering current weather conditions and extending up to an 8-day forecast.

## Technologies Used

* Flutter: Cross-platform framework for building mobile applications.
* Dart: Programming language used with Flutter.
* openweathermap API: for getting an weather API.
* Repository Pattern: Utilizing the repository pattern for data management and abstraction.
* Clean Architecture: Following the principles of Clean Architecture for organized and maintainable code.
* Unit testing: Focuses on testing individual units or components of the app, ensuring that each part functions correctly in isolation.
* Widget Testing: Ensures that the user interface behaves as expected and correctly reflects the app's state.
* flutter_bloc: Utilizing the Bloc library for state management.
* go_router: Implementing the GoRouter package for navigation within the app.
* dio: A powerful HTTP client for Dart, used for making network requests.
* hydrated_bloc: Manages state persistence in Bloc state management, maintaining state across app restarts.
* permission_handler: Manages permissions, such as location permissions, ensuring the app can access necessary features.
* geo_locator: Provides accurate location services for obtaining the device's exact position.
* built_value: Used for API models, including serialization and deserialization of data.
* mockito: Used for creating mock objects and stubs for unit testing.
* flutter_test: Provides testing utilities for Flutter widgets.
* bloc_test: Facilitates testing of Bloc state management logic.

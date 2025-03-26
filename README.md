# Fragrance: Eau Duelle

## Project Description

This project is a Flutter application designed to manage a waitlist for a perfume product.
It was an 8-hour non-commercial hackathon project.   
It includes features such as localization and integration with Firebase for saving waitlist data.

[![[DEBUG] Flutter Test, Build](https://github.com/ubu2020user/fragrance-waitlist-showcase/actions/workflows/debug-flutter-web.yml/badge.svg?branch=main)](https://github.com/ubu2020user/fragrance-waitlist-showcase/actions/workflows/debug-flutter-web.yml)

## Showcase
Click [Fragrance Website](https://fragrance-europe.web.app/) to see the results.

## Project Structure

- [lib/main.dart](./lib/main.dart): The entry point of the application. Initializes Firebase and sets up localization.
- [lib/pages/landing/landing_page.dart](./lib/pages/landing/landing_page.dart): The landing page of the application.
- [lib/components/](./lib/components): Contains (reusable) components used throughout the application.
- [lib/utils/constants.dart](./lib/utils/constants.dart): Contains constant values used throughout the application.
- [test/](./test): Contains test files to showcase unit testing.
- [.github/](./.github): Contains GitHub Actions workflow files for testing, building, and deploying the application.
- [lib/i18n/strings.g.dart](./lib/i18n/strings.g.dart): Generated localization strings.
  - [lib/i18n/en.i18n.json](./lib/i18n/en.i18n.json): English localization strings.
  - [lib/i18n/de.i18n.json](./lib/i18n/de.i18n.json): German localization strings.

## Setup Guide

### Prerequisites

- Flutter SDK: [Install Flutter](https://flutter.dev/docs/get-started/install)
- Firebase Project: [Create a Firebase project](https://firebase.google.com/)

### Environment Variables

This project uses environment variables to configure Firebase options. You can set these variables in a `.env` file or directly in your environment.

#### .env File

Create a `.env` file in the root of your project with the following content:

```env
APIKEY=your_api_key
AUTHDOMAIN=your_auth_domain
PROJECTID=your_project_id
STORAGEBUCKET=your_storage_bucket
MESSAGINGSENDERID=your_messaging_sender_id
APPID=your_app_id
MEASUREMENTID=your_measurement_id
```

#### Using --dart-define-from-file
To use the .env file, you need to pass the environment variables to the Flutter build command:
```bash
flutter run --dart-define-from-file=.env
# or
flutter build web --dart-define-from-file=.env
```

### Running the Project
I recommend adding `--dart-define-from-file` as argument to the run confiuration.  
This way, you can run the application via the IDE/GUI. 

1. Install dependencies:  
`flutter pub get`
2. Run the application:  
`flutter run --dart-define-from-file=.env`


## Pipeline Setup
To use the pipeline for testing, building or deploying, you need to set up a GitHub Actions workflow and add the necessary secrets to your repository.  

> **Important:** To set the secrets, the environment must be called `debug-environment`. Alternatively change this name in the [.github/](.github) files. 

> **Note:** The pipeline is set up to run on pushes to the `main` branch. You can change this in the `.github/workflows/main.yml` file.

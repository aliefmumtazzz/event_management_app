# Event Management App

> A Flutter project with the example implementataion of Clean Architecture and Flutter modular make the app fully maintainable

## App Feature

- Show event in months, days, and weeks
- Add event
- Store and get data from local storage

## App Screenshot

## Repository structure

_this repository follow clean architecture structure in addition of modular implementation._

- `lib/` directory is divided into two main directory: `data`, `domain`, `presentation`
- `core_module` is the custom package/library to store all the core login on the app

#### `lib/`

_the directory contains 3 folder: `data, domain, & presentation`_

- `data/datasource/` Consist of remote and local Data Sources. Remote Data Source will perform HTTP requests on the API. While local Data Source will cache or persist data
- `data/model/` Map Entity objects to Models and vice-versa
- `data/repository/` Actual implementations of the repositories in the Domain layer. Repositories are responsible to coordinate data from the different Data Sources
- `domain/entity` Business objects of the application
- `domain/repository` Abstract classes that define the expected functionality of outer layers
- `domain/usecase` Application-specific business rules
- `presentation/controller` Impelementation of BLoCs
- `presentation/page` Contains pages in the app
- `presentation/widget` Contains spesific widget used by the page

#### `lib/`

- **`injector.dart`** Contains all imported package in `injector.main.dart`
- **`main.dart`** The main flutter entry point and contain `runApp` function

## How to develop

In the app we use several packages, some of which you need to take notes:

- [Freezed](https://pub.dev/packages/freezed) for creating union classes and JSON generator
- [GetIt](https://pub.dev/packages/get_it) for service locator

### Add or modify models or blocs

You need to run `flutter packages pub run build_runner build --delete-conflicting-outputs` every time you add or modify models or blocs (especially modifying states).

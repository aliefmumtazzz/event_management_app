# Event Management App

> A Flutter project with the example implementataion of Clean Architecture and Flutter modular make the app fully maintainable

## App Feature

- Show event in months, days, and weeks
- Add event
- Store and get data from local storage

## App Screenshot
- Home page
![Screenshot_1712016433](https://github.com/aliefmumtazzz/event_management_app/assets/109934594/577a9e1d-c8e2-4003-aa15-93045cc7106f)
- Week view
![Screenshot_1712016428](https://github.com/aliefmumtazzz/event_management_app/assets/109934594/cfea34de-36b2-4e6f-8b83-a18fb9396e7b)
- Day view
![Screenshot_1712016422](https://github.com/aliefmumtazzz/event_management_app/assets/109934594/4112183d-6310-4c42-88e8-9fe3ad8ef9d3)
- Month view
![Screenshot_1712016402](https://github.com/aliefmumtazzz/event_management_app/assets/109934594/ddf1d352-577f-4b84-93e1-ce8d6c25a01b)
- Add event page
![Screenshot_1712016307](https://github.com/aliefmumtazzz/event_management_app/assets/109934594/174c72ee-9b87-4348-a899-78ae9da46abd)
![Screenshot_1712016309](https://github.com/aliefmumtazzz/event_management_app/assets/109934594/7774652e-e205-489c-9158-d9c5c178195f)
![Screenshot_1712016329](https://github.com/aliefmumtazzz/event_management_app/assets/109934594/7a709277-7c7d-4f45-9b17-f0e681234e24)

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

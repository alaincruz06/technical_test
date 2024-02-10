**Project Description**

Technical Test App

**Technical Test App** fetches popular movies from [TheMovieDB API](https://www.themoviedb.org/) and stores them locally using drift (for database management), dio for network requests, and GetX as the state management solution. Additionally, the app includes Firebase settings for future storage using Firebase Storage.

**Features**

1. Fetching popular movies from TheMovieDB.
2. Storing movie data locally using drift.
3. Network requests with dio.
4. State management using get.
5. Firebase integration for future Firebase Storage use.
6. Mapping entities from data folder to domain and presentation using SOLID principles
7. Theming and bottom navigation
8. Ofuscation of environmental variables

**Installation Instructions**

Clone the repository: `git clone https://github.com/alaincruz06/technical_test.git`
Navigate to the project directory: `cd technical_test`
Install dependencies: `flutter pub get`
Run the app: `flutter run`

-Bonus config:
If there´s any error on the Firebase config side, then create a project on Firebase and link it to the app using obfuscated environment variables following the [envied package](https://pub.dev/packages/envied) guidelines and using the provided env file.

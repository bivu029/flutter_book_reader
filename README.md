# Flutter Book Reader

[![Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)](https://flutter.dev/)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

<p align="center">
 <img src="https://i.ibb.co/BLFTbmx/book-reader-app-logo.png" alt="Book Reader App Logo" width="200">
</p>

A beautifully crafted book reader application built with Flutter, Google's open-source UI toolkit for building natively compiled, multi-platform applications from a single codebase.
[Watch Flutter Book Reader in action on YouTube!](https://youtube.com/shorts/o0c6o-XoYdA?feature=share)

## Features

- 📖 **Immersive Reading Experience**: Dive into captivating books in various formats.
- 🔖 **Bookmarks**: Keep track of your favorite moments with easy-to-use bookmarks.
- 🔍 **Full-Text Search**: Quickly find specific passages or quotes within books.
- 🌓 **Day & Night Modes**: Customize your reading environment with light and dark themes.
- 🔁 **Orientation Support**: Read comfortably in both portrait and landscape modes.
- 🔤 **Typography Customization**: Adjust font size, style, and background color to suit your preferences.

## App Screenshots

<p align="center">
<img src="https://i.ibb.co/znsc4x2/Whats-App-Image-2024-05-13-at-07-51-52-7f946aea.jpg" alt="App Screenshot 1" width="150">
<img src="https://i.ibb.co/qR54r75/Whats-App-Image-2024-05-13-at-07-51-49-75444598.jpg" alt="App Screenshot 2" width="150">
<img src="https://i.ibb.co/1s1JVDS/Whats-App-Image-2024-05-13-at-07-51-53-92e86905.jpg" alt="App Screenshot 3" width="150">
<img src="https://i.ibb.co/xzrLZ6R/Whats-App-Image-2024-05-13-at-07-51-54-4e67158a.jpg" alt="App Screenshot 4" width="150">
<img src="https://i.ibb.co/Cs8KGbk/Whats-App-Image-2024-05-13-at-07-51-56-3294d288.jpg" alt="App Screenshot 5" width="150">
<img src="https://i.ibb.co/tXqV0H9/Whats-App-Image-2024-05-13-at-07-51-54-968205f5.jpg" alt="App Screenshot 6" width="150">
</p>

## Architecture

This app uses the BLoC (Business Logic Component) pattern for state management, which helps to separate the presentation layer from the business logic. The main bottom navigation structure is built using the provided code, which utilizes the GoRouter library for routing and navigation.

## How it Works
```bash
App architecure =>
+-------------------+
                     |     App Starts    |
                     +-------+--+---------+
                             |  |
                             |  |
                             |  | First Time User?
                             |  |
                             |  |No
                             |  +-------------------+
                             |                      |Yes
                             |                      |
                             |                      |
                             |                      v
                             |                +-----------+
                             |                |  IsFirstTimer |
                             |                +-----------+
                             |                      |
                             |                      |
                             v                      |
                     +-----------+                  |
                     |  AuthPage |<------------------+
                     +-----------+
                             |
                             v
                     +---------------+
                     | MainNavigationBar |
                     +-------+-------+
                             |
         +---------------------------------------+
         |                   |                   |                   |
+--------v---------+ +--------v---------+ +-------v----------+ +-----v------+
|   DashboardPage  | |   LibraryPage    | |   CategoriPage   | | ProfilePage|
+------------------+ +------------------+ +------------------+ +------------+
         |                   |ReadHistory       |  Search   | 
         |                    Favorites           Categary
         |                    Downloads             |
         +---------+         +---------+         +---------+         
                   |                   |                   |         
                   |                   |                   |         
                   v                   v                   v         
                +-----------+      +-----------+      +-----------+  
                | BookDetails|      | BookDetails|      | BookDetails| 
                +-----------+      +-----------+      +-----------+  
                      |                   |                   |      
                      |                   |                   |      
                      +-------------------+-------------------+      
                                          |                          
                                          v                          
                                    +-----------+                    
                                    | BookContent|                   
                                    +-----------+                    
                                                                     
                                                                     
                                                                 


Frequently Asked Questions
1. Is this app following industry-grade standards?

    Yes, this app follows industry-grade standards by implementing BLoC management with some features also adhering to clean architecture principles.

2. Is this app completed?

    No, many features need to be added. Anyone is welcome to contribute to this project.

3. Can we use this code in our own project?

    Yes, you are free to use this code in your own projects.

4. Does this app follow clean architecture?

    Not entirely, but some features follow clean architecture principles. Implementing clean architecture for the entire app can be time-consuming.

5. What backend is used in this app, and is it secure?

 This app uses NestJS with dedicated authentication features. The backend project can be found ```[here](https://github.com/bivu029/flutter_book_reader_backend_nest).

```
1. The `AppRoute` class is responsible for defining the app's routes and navigation structure.
2. The `GoRouter` is initialized with the initial route and various other routes, including routes for authentication, book details, search, and more.
3. The app uses nested navigators with the `StatefulShellRoute.indexedStack` to handle the main bottom navigation structure.
4. Each bottom navigation item is represented by a `StatefulShellBranch`, which contains its respective routes.
5. BLoC instances are provided to the relevant pages using `MultiBlocProvider` and `BlocProvider` widgets.
6. The app utilizes dependency injection (DI) to manage the creation and disposal of BLoC instances.

## Getting Started

To run this app on your local machine, follow these steps:

1. Ensure you have Flutter installed on your machine. You can find the installation guide [here](https://flutter.dev/docs/get-started/install).
2. Clone this repository:
git clone https://github.com/bivu029/flutter_book_reader
3. Navigate to the project directory:
cd bookbazar
4. Fetch the required packages:
flutter pub get
4. Fetch the required packages:
flutter pub get
## Contributing

We welcome contributions to Bookbazar! If you find any issues or have ideas for new features, please open an issue or submit a pull request.

## License

Storyline is licensed under the [MIT License](LICENSE).

## Acknowledgments

- [Flutter](https://flutter.dev/) - The amazing cross-platform framework that powers Storyline.
- [epub_viewer](https://pub.dev/packages/epub_viewer) - A Flutter plugin for rendering EPUB books.

---

<p align="center">
<b>Made with ❤️ and Flutter</b>
</p>

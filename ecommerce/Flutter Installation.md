<!-- @format -->

# Flutter Installation

-install Git <https://git-scm.com/download/win>
-Download Flutter SDK and extract it <https://docs.flutter.dev/get-started/install/windows>

# SDK Installation

- Go to Environment Variables then set up the path of SDK bin

# Flutter Check if all neccesary stuff are installed

- type in bash command > flutter doctor

# Install Android Studio

-Install all SDK
-Install Virtual Manager
-- then run flutter doctor --android-licenses

# Extentions needed (VS CODE)

-Flutter (Debugger)

# Development

#Create the project

- flutter create <project name> (must be lower case)

#Run flutter

```bash
flutter run
```

# Development

- Adding Icon

## Add assets to your folder then add this code , but first add flutter_launcher_icons in dependencies

then run this code

```bash
$ flutter pub get
$ flutter pub run flutter_launcher_icons:main
```

#### Place it here

flutter:

- uses-material-design: true

- assets:
  - assets/images/Main_Banner.jpg

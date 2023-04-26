# FLUTTER ENVIORENMENT

A new Flutter project.

## Getting Started

# Steps to configure Enviorenment in flutter:
- Add these two dependencies:   
- flutter_flavor: ^3.1.1
- flutter_flavorizr: ^2.1.6
- flutter_dotenv: ^5.0.2
# ADD THESE CONFIGURATION INSIDE PUBSPEC.YAML UNDER DEPENDENCIES
copyCodeBlock('flavorizr:
  flavors:
    dev:
      app:
        name: "Dev"
      android:
        applicationId: "com.example.dev"
      ios:
        bundleId: "com.example.dev"

    prod:
      app:
        name: "Prod"
      android:
        applicationId: "com.example.prod"
      ios:
        bundleId: "com.example.prod"
')

# Run this Command 
- flutter pub run flutter_flavorizr

# Create two files in root:
- .env.dev
- .env.prod

# Add Files in Assets:
-  assets:
    - .env.prod
    - .env.dev
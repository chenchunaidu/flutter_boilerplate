# Flutter boilerplate

Flutter boilerplate is a base setup that can be used for building all new flutter application.

## Features

1. Routing
2. Authentication
3. Custom components
4. State management
5. Minimum setup required for all flutter applications
6. Basic Layout

## Components

### VStack

Wrapper around Column provides spacing property additionally

```dart
VStack(
  spacing: 8.0,
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
            const Text(
              "Heading 1",
              style: TextStyles.h1,
            ),
            const Text(
              "Heading 2",
              style: TextStyles.h2,
            )])
```

### HStack

Wrapper around Row provides spacing property additionally

```dart
HStack(
  spacing: 8.0,
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
            const Text(
              "Heading 1",
              style: TextStyles.h1,
            ),
            const Text(
              "Heading 2",
              style: TextStyles.h2,
            )])
```

### BorderedImage

Wrapper Image component Row provides border radius property additionally

```dart
BorderedImage(
        width: double.infinity,
        height: 400,
        fit: BoxFit.cover,
        borderRadius: 4.0,
        url:"url")
```

### CustomForm

Wrapper around the flutter form for making form handling. Instead of writing flutter code everytime you can define your form in List of Map which contains all the form details like placeholder, validator, helperText CustomForm will handle everything for you.

```dart
List<Map<String, dynamic>> otpForm = [
  {
    "name": "otp",
    "placeholder": "OTP",
    "validator": ValidationBuilder(requiredMessage: "OTP is required").build(),
    "helperText": "OTP is 12345 😃",
    "autocorrect": false,
    "obscureText": true,
  }
];

class OTPForm extends StatelessWidget {
  OTPForm({Key? key}) : super(key: key);

  final login = Get.find<AuthController>().login;
  @override
  Widget build(BuildContext context) {
    return CustomForm(
      fields: otpForm,
      onSubmit: (value) {
        print(value);
        if (value["otp"] == "12345") {
          login();
          Get.toNamed('/home');
        }
      },
      submitButtonChild: const Text(
        "Login",
        style: TextStyles.buttonText1,
      ),
    );
  }
}

```

## UI Elements

1. Custom Colors
2. Font sizes
3. Spacing sizes / insets
4. Screen sizes

## Libraries and packages used

1. [getx](https://pub.dev/packages/get) for state management and routing

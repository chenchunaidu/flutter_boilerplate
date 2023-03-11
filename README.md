# Flutter boilerplate

Flutter boilerplate is a base setup that can be used for building all new flutter applications.

## Folder Structure

- Components
  - common
  - all other screen components
- Helpers
  - helpers required for purpose
- Layout
  - Provides layout components like bottom navigation wrapper
- Screens
  - All screens components will lie here
- Theme
  - All theme data lies here

## Features

1. Routing
2. Authentication
3. Custom components
4. State management

### Basic Layout

Flutter boilerplate comes with basic layout which supports scaffold along with bottom navigation bar you can pass a argument to hide navigation

```dart
      getPages: getPageWrapper([
        PageWrapper(path: '/login', child: Login(), navbar: false),
        PageWrapper(path: '/home', child: const Home()),
        PageWrapper(path: '/content', child: const Content()),
        PageWrapper(path: '/calendar', child: const Calendar()),
        PageWrapper(path: '/profile', child: const Account()),
        PageWrapper(path: "/otp", child: const OTP(), navbar: false)
      ]),
```

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

Wrapper around the flutter form for making form handling easy. Instead of writing flutter code everytime you can define your form in List of Maps which contains all the form details like placeholder, validator, helperText CustomForm will handle everything for you.

Supports `TextInput` and `DateInput` now

```dart
List<Map<String, dynamic>> otpForm = [
  {
    "type": FormFieldType.text,
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

Sometime you need to render multiple form fields in a row you can do that using the `type` `row`

```dart
[
  {
    "type": FormFieldType.row,
    "fields": [
      {
        "type": FormFieldType.text,
        "name": "principleAmount",
        "placeholder": "Principle",
      },
      {
        "type": FormFieldType.text,
        "name": "interestRate",
        "placeholder": "Interest rate",
      },
    ]
  },
];

```

## Theme elements

1. Custom Colors
2. Font sizes
3. Spacing sizes / insets
4. Screen sizes

## Libraries and packages used

1. [getx](https://pub.dev/packages/get) for state management and routing
2. [form_validator](https://pub.dev/packages/form_validator) for validating the forms
3. [date_time_picker](https://pub.dev/packages/date_time_picker) for date input

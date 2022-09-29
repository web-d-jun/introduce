import 'package:formz/formz.dart';

enum PasswordValidationError { empty }

class Password extends FormzInput<String, PasswordValidationError> {
  const Password.pure() : super.pure('');
  const Password.dirty([super.value = '']) : super.dirty();

  @override
  PasswordValidationError? validator(String? value) {
    // print('${value} password');
    // throw UnimplementedError();
    return value?.isNotEmpty == true ? null : PasswordValidationError.empty;
  }
}

// https://bloclibrary.dev/#/flutterlogintutorial?id=login
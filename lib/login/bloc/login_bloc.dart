import 'package:authentication_repository/authentication_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:introduce/login/login.dart';
import 'package:formz/formz.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc({
    required AuthenticationRepository authenticationRepository,
  })  : _authenticationRepository = authenticationRepository,
        super(const LoginState()) {
    on<LoginUsernameChanged>(_onUsernameChanged);
  }
  final AuthenticationRepository _authenticationRepository;
}

void _onUsernameChanged(LoginUsernameChanged event, Emitter<LoginState> emit) {
  final username = Username.dirty(event.username);
  print(username);
  // emit(state)
}

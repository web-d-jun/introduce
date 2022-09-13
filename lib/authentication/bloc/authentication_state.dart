part of 'authentication_bloc.dart';

class AuthenticationState extends Equatable {
  const AuthenticationState._({this.status = '', this.user = ''});

  final String status;
  final String user;
  @override
  List<Object> get props => [status, user];
}

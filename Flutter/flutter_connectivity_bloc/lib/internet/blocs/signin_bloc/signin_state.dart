
abstract class SignInState {}

class SignInIntialState extends SignInState {}

class SignInValidState extends SignInState {}

class SignInInvalidState extends SignInState {}

class SignInErrorState extends SignInState {
  final String errMsg;
  SignInErrorState(this.errMsg);
}

class SignInLoadingState extends SignInState {}
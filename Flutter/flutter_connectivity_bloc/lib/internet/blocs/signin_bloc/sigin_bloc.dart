
import 'package:email_validator/email_validator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_connectivity_bloc/internet/blocs/signin_bloc/signin_event.dart';
import 'package:flutter_connectivity_bloc/internet/blocs/signin_bloc/signin_state.dart';


class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc() : super(SignInIntialState()) {
    on<SignInTextChangeEvent>((event, emit) {
      if (event.emailValue.isEmpty)
      {
        emit(SignInErrorState("Please enter email"));
      }
      else if (EmailValidator.validate(event.emailValue) == false)
      {
         emit(SignInErrorState("Please enter valid email"));
      }
      else if (event.passwordValue.isEmpty)
      {
        emit(SignInErrorState("Please enter password"));
      }
      else
      {
        emit(SignInValidState());
      }
    });

    on<SignInSubmitEvent>((event, emit) {
      emit(SignInLoadingState());
    });
  }
}
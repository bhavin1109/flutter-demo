import 'dart:async';
import 'package:connectivity/connectivity.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum InternetStateCubit {initial, loss, gain}

class InternetCubit extends Cubit<InternetStateCubit> {

  final Connectivity _connectivity = Connectivity();
  StreamSubscription? connectivitySubscription;

  InternetCubit() : super(InternetStateCubit.initial) {

    connectivitySubscription = _connectivity.onConnectivityChanged.listen((event) {
      if (event == ConnectivityResult.mobile || event == ConnectivityResult.wifi)
      {
          emit(InternetStateCubit.gain);
      }
      else
      {
        emit(InternetStateCubit.loss);
      }

    });

  }

  @override
  Future<void> close() {

    connectivitySubscription?.cancel();
    // TODO: implement close
    return super.close();
  }
}
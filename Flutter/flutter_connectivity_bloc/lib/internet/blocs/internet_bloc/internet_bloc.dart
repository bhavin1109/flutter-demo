import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:connectivity/connectivity.dart';

import 'internet_event.dart';
import 'internet_state.dart';

class InternetBloc extends Bloc<InternetEvent, InternetState> {

  final Connectivity _connectivity = Connectivity();
  StreamSubscription? connectionSubscription;

  InternetBloc() : super(InternetInitilizationState()) {

    on<InternetLossEvent>((event, emit) => emit(InternetLossState()));
    on<InternetGainEvent>((event, emit) => emit(InternetGainState()));

    connectionSubscription = _connectivity.onConnectivityChanged.listen((event)
    {
        //print("event===$event");
        if (event == ConnectivityResult.mobile || event == ConnectivityResult.wifi)
        {
          add(InternetGainEvent());
        }
        else
        {
          add(InternetLossEvent());
        }
    });
  }

  @override
  Future<void> close() {
    connectionSubscription?.cancel();
    // TODO: implement close
    return super.close();
  }
}
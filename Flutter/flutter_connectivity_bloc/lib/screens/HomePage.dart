import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../internet/cubits/internet_cubit.dart';



class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocBuilder<InternetCubit, InternetStateCubit> (
          builder: (context, state) {
            if (state == InternetStateCubit.gain)
            {
              return Center(child: Text("Connected..."));
            }
            else if (state == InternetStateCubit.loss)
            {
              return Center(child: Text("Not connected..."));
            }
            else
            {
              return Center(child: Text("Loading..."));
            }
          },
        )

        // BlocBuilder<InternetBloc, InternetState>(
        //   builder: (context, state) {
        //     if (state is InternetGainState)
        //     {
        //       return Center(child: Text("Connected..."));
        //     }
        //     else if (state is InternetLossState)
        //     {
        //       return Center(child: Text("Not connected..."));
        //     }
        //     else
        //     {
        //       return Center(child: Text("Loading..."));
        //     }
        //   },
        // )
      
    );
  }
}


import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_connectivity_bloc/screens/SignInPage.dart';

import 'datalist/presentation/cubit/list_cubit.dart';
import 'datalist/presentation/pages/temp_list_page.dart';
import 'internet/blocs/signin_bloc/sigin_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context) => ListCubit(),
        child: TempListPage(),
      ),


      // BlocProvider(
      //   create: (context) => InternetCubit(), //InternetBloc(),
      //   child: MaterialApp(
      //     debugShowCheckedModeBanner: false,
      //     home: HomePage(),
      //   ),
      // ),


    );
  }
}



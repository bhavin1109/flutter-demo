import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_connectivity_bloc/datalist/presentation/cubit/list_cubit.dart';

import '../datalist/presentation/pages/temp_list_page.dart';
import '../internet/blocs/signin_bloc/sigin_bloc.dart';
import '../internet/blocs/signin_bloc/signin_event.dart';
import '../internet/blocs/signin_bloc/signin_state.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {

  TextEditingController emailTextCtr = TextEditingController();
  TextEditingController passwordTextCtr = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            //runSpacing: 10,
            children: [

              BlocBuilder<SignInBloc, SignInState>(
                  builder: (context, state) {
                    if (state is SignInErrorState) {
                      return  Text(state.errMsg, style: TextStyle(color: Colors.red),);
                    } else {
                      return Container();
                    }
                  },
              ),

              const SizedBox(height: 10,),

              TextField(
                controller: emailTextCtr,
                onChanged: (value) => {
                  //print("Email==$value"),
                  BlocProvider.of<SignInBloc>(context).add(SignInTextChangeEvent(emailTextCtr.text, passwordTextCtr.text)),
                },
                decoration:InputDecoration(
                  hintText: "Email",
                )
              ),

              const SizedBox(height: 10,),

              TextField(
                controller: passwordTextCtr,
                onChanged: (value) => {
                  BlocProvider.of<SignInBloc>(context).add(SignInTextChangeEvent(emailTextCtr.text, passwordTextCtr.text))

                },
                decoration: InputDecoration(
                  hintText: "Password",
                ),
              ),

              const SizedBox(height: 30,),

              SizedBox(
                width: double.infinity,
                height: 50,
                child: BlocBuilder<SignInBloc, SignInState> (
                  builder: (context, state) {
                      if (state is SignInLoadingState)
                      {
                        return Center(child: CircularProgressIndicator(color: Colors.black,));
                      }

                    return  CupertinoButton(
                      onPressed: () {
                        if (state is SignInValidState)
                        {
                          BlocProvider.of<SignInBloc>(context).add(
                              SignInSubmitEvent(
                                  emailTextCtr.text, passwordTextCtr.text));

                        }

                        Future.delayed(const Duration(seconds: 2), () {
                          // BlocProvider(
                          //   create: (context) => ListCubit(),
                          //   child: TempListPage(),
                          // );
                          Navigator.push(context, MaterialPageRoute(builder: (context) {
                            return BlocProvider(
                              create: (context) => ListCubit(),
                              child: TempListPage(),
                            );
                          },));
                        });

                      },
                      color: (state is SignInValidState) ? Colors.black : Colors.grey,

                      child: Text("SignIn"),
                    );
                  },
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

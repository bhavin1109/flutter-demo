import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_first_design/CustomWidget/CustomButton.dart';
import 'package:flutter_first_design/NotificationListPage.dart';
import 'package:flutter_first_design/UtilityClass/CustomTextStyle.dart';
import 'CustomWidget/CustomTextField.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isSignup = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Wrap(
          spacing: 30,
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 320,
                  color: Colors.black,
                  child: Center(
                    child: Container(
                      width: 140,
                      height: 140,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(70)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(70),
                            child: Image.asset(
                              "assets/images/profile.jpg",
                              fit: BoxFit.fill,
                            )),
                      ),
                    ),
                  ),
                ),

                Positioned(
                  bottom: 5,
                  left: 0,
                  right: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TextButton(
                        onPressed: () {
                          setState(() {
                            isSignup = false;
                          });
                        },
                        child: subHeadingText(text: "Sign in", color: isSignup ? Colors.white60 : Colors.white),
                      ),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            isSignup = true;
                          });
                        },
                        child: subHeadingText(text: "Create Account", color: isSignup ? Colors.white : Colors.white60),
                      ),
                    ],
                  ),
                ),

                // LoginAnimation(isSignup: false),
                AnimatedPositioned(
                  duration: const Duration(milliseconds: 400),
                  curve: Curves.linear,
                  left: isSignup ? 240.0 : 45.0,
                  child: Container(
                    margin: const EdgeInsets.only(top: 299),
                    width: 70.0,
                    height: 30.0,
                    child: Image.asset("assets/images/ic_wave.png"),
                  ),
                )
              ],
            ),

            const SizedBox(height: 20),

            LoginBottomBar(isSignup: isSignup),
            //getLoginBottomBar(context, isSignup, firstNameController, lastNameController, emailController, passwordController)
          ],
        ),
      ),
    );
  }
}

//MARK: Login page Bottom bar Widget
class LoginBottomBar extends StatefulWidget {
  const LoginBottomBar({super.key, required this.isSignup});

  final bool isSignup;

  @override
  State<LoginBottomBar> createState() => _LoginBottomBarState();
}

class _LoginBottomBarState extends State<LoginBottomBar> {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Column(
        children: [
          //if (widget.isSignup)
          AnimatedContainer(
            height: widget.isSignup ? 40 : 0,
            duration: const Duration(milliseconds: 400),
            curve: Curves.linear,
            child: SizedBox(
              child: widget.isSignup ? Row(
                children: [
                  Flexible(
                    child: CustomTextField(
                        placeholder: "First Name",
                        controller: firstNameController),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Flexible(
                    child: CustomTextField(
                        placeholder: "Last Name", controller: lastNameController),
                  ),
                ],
              ) : const SizedBox(),
            ),
          ),

          //if (widget.isSignup)
          const SizedBox(height: 15,),

          CustomTextField(
            placeholder: "Email Address",
            controller: emailController,
            keyboardType: TextInputType.emailAddress,
          ),

          const SizedBox(height: 15,),

          CustomTextField(
              placeholder: "Enter Password",
              controller: passwordController,
              isSecureText: true),

          const SizedBox(height: 5,),

          if (!widget.isSignup)
            CupertinoButton(
                onPressed: () {},
                child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "Forgot password?",
                      style: customNormalTextStyle(color: Colors.grey),
                    )
                )
            ),

          // AnimatedContainer(
          //   //height: !widget.isSignup ? 50 : 0,
          //   duration: const Duration(milliseconds: 300),
          //   curve: Curves.linear,
          //   child: !widget.isSignup ? CupertinoButton(
          //       onPressed: () {},
          //       child: Align(
          //           alignment: Alignment.centerRight,
          //           child: Text(
          //             "Forgot password?",
          //             style: customNormalTextStyle(color: Colors.grey),
          //           )
          //       )
          //   ) : const SizedBox(height: 0,),
          // ),

          const SizedBox(height: 20,),

          CustomButton(onPressed: () {
            //print("tf===${firstNameController.text.toString()}, ${lastNameController.text.toString()}, ${emailController.text.toString()}, ${passwordController.text.toString()}");
            Navigator.push(context, MaterialPageRoute(builder: (context) => const NotificationListPage(),));
          }, title: "Sign in"),

        ],
      ),
    );
  }
}



// Widget getLoginBottomBar(BuildContext context, bool isSignup, TextEditingController firstNameController, TextEditingController lastNameController, TextEditingController emailController, TextEditingController passwordController) {
//   return Padding(
//     padding: const EdgeInsets.only(left: 10, right: 10),
//     child: Column(
//       children: [
//         //if (widget.isSignup)
//         AnimatedContainer(
//           height: isSignup ? 40 : 0,
//           duration: const Duration(milliseconds: 400),
//           curve: Curves.linear,
//           child: SizedBox(
//             child: isSignup ? Row(
//               children: [
//                 Flexible(
//                   child: CustomTextField(
//                       placeholder: "First Name",
//                       controller: firstNameController),
//                 ),
//                 const SizedBox(
//                   width: 10,
//                 ),
//                 Flexible(
//                   child: CustomTextField(
//                       placeholder: "Last Name", controller: lastNameController),
//                 ),
//               ],
//             ) : const SizedBox(),
//           ),
//         ),
//
//         //if (widget.isSignup)
//         const SizedBox(height: 15,),
//
//         CustomTextField(
//           placeholder: "Email Address",
//           controller: emailController,
//           keyboardType: TextInputType.emailAddress,
//         ),
//
//         const SizedBox(height: 15,),
//
//         CustomTextField(
//             placeholder: "Enter Password",
//             controller: passwordController,
//             isSecureText: true),
//
//         const SizedBox(height: 5,),
//
//         if (!isSignup)
//           CupertinoButton(
//               onPressed: () {},
//               child: Align(
//                   alignment: Alignment.centerRight,
//                   child: Text(
//                     "Forgot password?",
//                     style: customNormalTextStyle(color: Colors.grey),
//                   )
//               )
//           ),
//
//         // AnimatedContainer(
//         //   //height: !widget.isSignup ? 50 : 0,
//         //   duration: const Duration(milliseconds: 300),
//         //   curve: Curves.linear,
//         //   child: !widget.isSignup ? CupertinoButton(
//         //       onPressed: () {},
//         //       child: Align(
//         //           alignment: Alignment.centerRight,
//         //           child: Text(
//         //             "Forgot password?",
//         //             style: customNormalTextStyle(color: Colors.grey),
//         //           )
//         //       )
//         //   ) : const SizedBox(height: 0,),
//         // ),
//
//         const SizedBox(height: 20,),
//
//         CustomButton(onPressed: () {
//           print("tf===${firstNameController.text.toString()}, ${lastNameController.text.toString()}, ${emailController.text.toString()}, ${passwordController.text.toString()}");
//           Navigator.push(context, MaterialPageRoute(builder: (context) => const NotificationListPage(),));
//         }, title: "Sign in"),
//
//       ],
//     ),
//   );
// }
//

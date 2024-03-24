import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quiz_app_ewabootcamp/screens/category_screen.dart';
import 'package:quiz_app_ewabootcamp/utils/global_variable.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var mySize = MediaQuery.of(context).size;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
        ),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 60,
                  ),
                  Image.asset(
                    "assets/login_image.png",
                    height: 300,
                    width: 300,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Hello",
                    style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    "Welcome to the quiz app, please login to start the game",
                    style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  const Align(
                      alignment: AlignmentDirectional.centerStart,
                      child: Text("User name")),
                  TextFormField(
                    controller: userNameController,
                    validator: (textFromUserName) {
                      if (textFromUserName!.isEmpty) {
                        return "الرجاء عدم ترك اسم المستخد فارغ";
                      } else if (!textFromUserName
                          .startsWith(RegExp(r'[A-Z]'))) {
                        return "username should start with capitale liiter";
                      } else if (textFromUserName.length < 4) {
                        return "username should exceed 3 litters";
                      }
                    },
                    decoration: InputDecoration(
                        // label: Text("User name"),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(width: 3, color: Colors.black),
                            borderRadius: BorderRadius.circular(20)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 3,
                                color: Color.fromARGB(255, 8, 239, 16)),
                            borderRadius: BorderRadius.circular(20)),
                        errorBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(width: 3, color: Colors.red),
                            borderRadius: BorderRadius.circular(20))),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  const Align(
                      alignment: AlignmentDirectional.centerStart,
                      child: Text("Password")),

                  // TextFormField(
                  //   obscureText: true,
                  //   decoration: InputDecoration(
                  //     suffixIcon: const Icon(Icons.remove_red_eye_outlined),
                  //     // label: Text("User name"),
                  //     enabledBorder: OutlineInputBorder(
                  //         borderSide: const BorderSide(
                  //             width: 3, color: Color.fromARGB(255, 6, 240, 37)),
                  //         borderRadius: BorderRadius.circular(20)),
                  //     focusedBorder: OutlineInputBorder(
                  //         borderSide: const BorderSide(
                  //             width: 3, color: Color.fromARGB(255, 255, 0, 0)),
                  //         borderRadius: BorderRadius.circular(20)),
                  //   ),
                  // ),

                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: ElevatedButton(
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  // Navigator.push(
                                  //   context,
                                  //   MaterialPageRoute<void>(
                                  //     builder: (BuildContext context) =>
                                  //         const CategoryScreen(),
                                  //   ),
                                  // );
                                  Navigator.pushAndRemoveUntil<void>(
                                    context,
                                    MaterialPageRoute<void>(
                                        builder: (BuildContext context) =>
                                            const CategoryScreen()),
                                    (route) => false,
                                  );
                                }
                              },
                              child: const Text("Login"))),
                    ],
                  ),
                  // SizedBox(
                  //   width: mySize.width,
                  //   child: ElevatedButton(onPressed: () {}, child: Text("Login")),
                  // )

                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/facebook_icon.webp",
                        height: 20,
                        width: 20,
                      ),
                      Image.asset(
                        "assets/google_icon.png",
                        height: 35,
                        width: 35,
                      ),
                      Image.asset(
                        "assets/linkedin_icon.webp",
                        height: 20,
                        width: 20,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

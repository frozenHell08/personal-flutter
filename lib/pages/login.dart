import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:personal/components/button.dart';
import 'package:personal/components/textfield.dart';
import '../components/mymethods.dart';

class Login extends StatelessWidget {
  Login({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  void signIn() {}

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: darkGreenGradient(),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 50,),
                  const Icon(
                    Icons.lock,
                    size: 80,
                  ),
                  const SizedBox(height: 30,),
                  const Text(
                    'Welcome back!',
                    style: TextStyle(
                      fontSize: 30,
                      fontFamily: 'NellaSue',
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  const SizedBox(height: 25,),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(radius),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                      child: Container(
                        height: getResHeight(context, 0.5),
                        width: getResWidth(context, 0.8),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Colors.lightGreen.shade400, Colors.grey.shade500],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomCenter,
                          ),
                          borderRadius: BorderRadius.circular(radius),
                          border: Border.all(width: 2, color: Colors.white30),
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: getResHeight(context, 0.05)),
                            CustomTextField(
                              controller: usernameController,
                              hintText: 'Username',
                              obscureText: false,
                              label: 'Username',
                              labelIcon: Icons.person,
                            ),
                            SizedBox(height: getResHeight(context, 0.03),),
                            CustomTextField(
                              controller: passwordController,
                              hintText: 'Password',
                              obscureText: true,
                              label: 'Password',
                              labelIcon: Icons.key,
                              iconAngle: 45,
                            ),
                            Expanded(child: SizedBox(height: getResHeight(context, 0.03),)),
                            CustomButton(
                              onTap: () {
                                print('signing in');
                              },
                            ),
                            SizedBox(height: getResHeight(context, 0.05),),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: getResHeight(context, 0.03),),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'No credentials?',
                        style: TextStyle(
                          color: Colors.white60
                        ),
                      ),
                      SizedBox(width: 5,),
                      Text(
                        'Create an account',
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )),
      ),
    );
  }
}
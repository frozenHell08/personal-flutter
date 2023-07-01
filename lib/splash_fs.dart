import 'package:flutter/material.dart';
import 'package:personal/main.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    navigateToLogin();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.lightGreen.shade400, Colors.grey.shade900],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 300,
                width: 300,
                child: Image.asset('assets/malleus_walk.gif'),
              ),
              const SizedBox(height: 10,),
              const Text(
                'Memory',
                style: TextStyle(
                  fontSize: 28,
                  fontFamily: 'Canterbury',
                  fontWeight: FontWeight.bold
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> navigateToLogin() async {
    Future.delayed(
      const Duration(seconds: 8), () {
        Navigator.pushReplacement(context, MaterialPageRoute(
          builder: (context) => const MyHomePage(title: 'aspg',)));
      }
    );
  }
}
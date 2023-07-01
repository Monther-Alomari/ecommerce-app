import 'package:flutter/material.dart';

class Success extends StatefulWidget {
  const Success({super.key});

  @override
  State<Success> createState() => _SuccessState();
}

class _SuccessState extends State<Success> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('lib/assets/images/Pattern Success.png',
                height: 400,
              ),
              const SizedBox(height: 10,),
              const Text('Login Success',
                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 50,),
              MaterialButton(onPressed: (){},
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                ),
                minWidth: 210,
                height: 50,
                child: const Text('Back to home', style:TextStyle(fontSize:18)),
                textColor: Colors.white,
                color: Colors.deepOrange,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
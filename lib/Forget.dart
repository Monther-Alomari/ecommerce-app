
import 'package:flutter/material.dart';
import 'package:untitled/Register.dart';
import 'package:untitled/logIn.dart';

class Forget extends StatefulWidget {
  const Forget({super.key});

  @override
  State<Forget> createState() => _ForgetState();
}

class _ForgetState extends State<Forget> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          alignment: AlignmentDirectional.center,
          margin: EdgeInsets.all(18),
          child: Stack(
            children: [
              SizedBox(height: 16,),
              Icon(Icons.arrow_back,size: 28,),
              Column(
                children: [
                  SizedBox(height: 80,),
                  Text('Forgot Password',
                    style: TextStyle(
                        fontSize: 28,
                        fontFamily: 'Muli',
                        fontWeight: FontWeight.bold
                    ),
                    textAlign: TextAlign.center,),
                  SizedBox(height: 2,),
                  Text('Please enter your email and we will'
                      'send \n you a link to return your account',
                    style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Muli',
                      color: Colors.grey,
                    ),
                    textAlign: TextAlign.center,),
                  SizedBox(height: 70,),
                  TextField(
                    style: TextStyle(fontSize: 16),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      suffixIcon: Icon(Icons.email_outlined),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      labelText: 'Email',
                      hintText: 'Enter your email',
                    ),
                  ),
                  SizedBox(height: 90,),
                  MaterialButton(
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const LogIn()),
                      );
                    },
                    height: 50,
                    minWidth: 400,
                    child: Text('Continue',style: TextStyle(
                        fontSize: 18
                    ),),
                    textColor: Colors.white,
                    color: Colors.deepOrange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                  ),
                  SizedBox(height: 50,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Don\'t have an account?',
                        style: TextStyle(fontSize: 16),),
                      SizedBox(height: 0.5,),
                      TextButton(onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const RegisterScreen()),
                        );
                      },
                        child: Text('Sign Up',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.deepOrange,
                          ),),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
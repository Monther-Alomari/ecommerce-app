// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xf0f0f0),
          leading: IconButton(
            icon: Icon(Icons.arrow_back,color: Colors.black,),
            onPressed: (){},
          ),
        ),
        body: Center(child:
        SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 30,),
              Text("Register Account",
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28),),
              SizedBox(height: 5,),
              Text("Complete your details or continue",
                style: TextStyle(color: Colors.grey.shade600),),
              SizedBox(height: 3,),
              Text("with social media",
                style: TextStyle(color: Colors.grey.shade600),),
              SizedBox(height: 60,),
              Container(
                width: 350,
                child: TextField(
                  style: TextStyle(fontSize: 15),
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(30, 20, 20, 20),
                      suffixIcon: Icon(Icons.email_outlined),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      hintText: "Enter your email",
                      labelText: "Email",
                      floatingLabelBehavior: FloatingLabelBehavior.always
                  ),
                ),
              ),
              SizedBox(height: 25,),
              Container(
                width: 350,
                child: TextField(
                  style: TextStyle(fontSize: 15),
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(30, 20, 20, 20),
                      suffixIcon: Icon(Icons.lock_outline),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      hintText: "Enter your password",
                      labelText: "Password",
                      floatingLabelBehavior: FloatingLabelBehavior.always
                  ),
                ),
              ),
              SizedBox(height: 25,),
              Container(
                width: 350,
                child: TextField(
                  style: TextStyle(fontSize: 15),
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(30, 20, 20, 20),
                      suffixIcon: Icon(Icons.lock_outline),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      hintText: "Re-enter your password",
                      labelText: "Confirm Password",
                      floatingLabelBehavior: FloatingLabelBehavior.always
                  ),
                ),
              ),
              SizedBox(height: 35,),
              MaterialButton(onPressed: (){},
                height: 55,
                minWidth: 350,
                child: Text("Continue",
                  style: TextStyle(fontSize: 18),),
                textColor: Colors.white,
                color: Colors.orange.shade800,
                shape: StadiumBorder(),),
              SizedBox(height: 70,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                      radius: 18,
                      backgroundColor: Colors.grey.shade100,
                      child: SvgPicture.asset("lib/assets/icons/google-icon.svg")),
                  SizedBox(width: 25,),
                  CircleAvatar(
                      radius: 18,
                      backgroundColor: Colors.grey.shade100,
                      child: SvgPicture.asset("lib/assets/icons/facebook-2.svg")),
                  SizedBox(width: 25,),

                  CircleAvatar(
                      radius: 18,
                      backgroundColor: Colors.grey.shade100,
                      child: SvgPicture.asset("lib/icons/assets/twitter.svg")),
                ],),
              SizedBox(height: 35,),
              Text("By continunig you confirm that you agree")
            ],
          ),
        )),
      ),
    );
  }
}

import 'package:flutter/material.dart';
// import 'package:LogIn/screens/LogIn/widgets/buttons.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.topRight,
                colors: <Color>[Colors.green, Colors.lightGreen])),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              headderTxt(context),
              LogInBoxField(context),
            ]),
      ),
    );
  }

  Container LogInBoxField(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.7,
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50), topRight: Radius.circular(50))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            LogInForm(),
            LogInBtn(),
            Text('LogIn with SNS',
                style: Theme.of(context).textTheme.titleSmall),
            LogInWithSocialMedia(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            )
          ],
        ));
  }

  Widget LogInForm() {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 0.3, color: Colors.grey),
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 8,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      width: MediaQuery.of(context).size.width * 0.8,
      child: Column(children: [
        txtField(
            'Email',
            const BorderRadius.only(
                topLeft: Radius.circular(8), topRight: Radius.circular(8))),
        const Divider(
          color: Colors.black54,
          height: 1,
        ),
        txtField(
            'Password',
            const BorderRadius.only(
                bottomLeft: Radius.circular(8),
                bottomRight: Radius.circular(8))),
      ]),
    );
  }

  Widget LogInWithSocialMedia() {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.3,
            child: MaterialButton(
              onPressed: () {},
              shape: StadiumBorder(),
              height: 40,
              textColor: Colors.white,
              color: Colors.blue,
              splashColor: Colors.white12,
              child: const Text('Facebook'),
            ),
          ),
          // SizedBox(
          //     width: MediaQuery.of(context).size.width * 0.3,
          //     child: LogInButtons('Github', Colors.black, Colors.white)),
        ],
      ),
    );
  }

  Widget LogInBtn() {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.5,
      child: MaterialButton(
        onPressed: () {},
        shape: const StadiumBorder(),
        height: 40,
        textColor: Colors.white,
        color: Colors.green,
        splashColor: Colors.greenAccent,
        child: const Text('LogIn'),
      ),
    );
  }

  Widget txtField(String title, BorderRadius borderRadius) {
    return TextField(
      decoration: InputDecoration(
        labelText: title,
        fillColor: Colors.white,
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: borderRadius,
        ),
      ),
    );
  }

  Padding headderTxt(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('LogIn', style: Theme.of(context).textTheme.headlineLarge),
          Text('Welcome Back',
              style: Theme.of(context).textTheme.headlineSmall),
        ],
      ),
    );
  }
}

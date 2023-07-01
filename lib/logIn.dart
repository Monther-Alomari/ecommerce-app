import 'package:flutter/material.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return
      // SafeArea(
      //   child:
      Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Colors.green.shade900,
                Colors.green.shade500,
                Colors.green.shade400
              ])),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 25, bottom: 35),
                height: MediaQuery.of(context).size.height / 4.5,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Welcome Back',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(50),
                      )),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius:
                          const BorderRadius.all(Radius.circular(10)),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.4),
                              spreadRadius: 13,
                              blurRadius: 13,
                              offset: const Offset(0, 10),
                            ),
                          ],
                        ),
                        margin: const EdgeInsets.only(
                            top: 50, bottom: 40, left: 30, right: 30),
                        child:  Column(
                          children: [
                            TextField(
                              decoration: InputDecoration(
                                  hintText: 'Email',
                                  border: InputBorder.none,
                                  hintStyle: TextStyle(color: Colors.grey),
                                  contentPadding:
                                  EdgeInsets.symmetric(horizontal: 10)),
                            ),
                            Divider(
                              color: Colors.black45,
                              height: 1,
                            ),
                            TextField(
                              decoration: InputDecoration(
                                  hintText: 'Password',
                                  hintStyle: TextStyle(color: Colors.grey),
                                  border: InputBorder.none,
                                  contentPadding:
                                  EdgeInsets.symmetric(horizontal: 10)),
                            )
                          ],
                        ),
                      ),
                      MaterialButton(
                        height: 40,
                        minWidth: 200,
                        onPressed: () {},
                        color: Colors.green.shade700,
                        textColor: Colors.white,
                        shape: const StadiumBorder(),
                        child: const Text('Login'),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'Login with SNS',
                            style: TextStyle(
                                color: Colors.grey.shade500,
                                fontWeight: FontWeight.bold),
                          )),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          MaterialButton(
                            height: 40,
                            minWidth: 140,
                            onPressed: () {},
                            color: Colors.blue,
                            textColor: Colors.white,
                            shape: const StadiumBorder(),
                            child: const Text(
                              'Facebook',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          MaterialButton(
                            height: 40,
                            minWidth: 140,
                            onPressed: () {},
                            color: Colors.black,
                            textColor: Colors.white,
                            shape: const StadiumBorder(),
                            child: const Text(
                              'Github',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        // ),
      );
  }
}
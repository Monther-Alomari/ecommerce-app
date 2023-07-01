import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:unicons/unicons.dart';

class Hello extends StatefulWidget {
  const Hello({super.key});

  @override
  State<Hello> createState() => _HelloState();
}

class _HelloState extends State<Hello> {
  bool pass = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  colors: [Colors.pink, Colors.yellow, Colors.blue])),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.asset('lib/assets/lottie/login2.json', height:200, width: 200),
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                padding:
                const EdgeInsets.only(left: 25, right: 25, top: 25, bottom: 20),
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Column(
                  children: [
                    const Text(
                      'Hello',
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Please Hello to Your Account',
                      style:
                      TextStyle(fontSize: 16, color: Colors.grey.shade700),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextField(
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                gapPadding: 10,
                                borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                                borderSide:
                                BorderSide(color: Colors.grey.shade800)),
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 35, vertical: 25),
                            border: OutlineInputBorder(
                                gapPadding: 10,
                                borderRadius:
                                const BorderRadius.all(Radius.circular(25)),
                                borderSide:
                                BorderSide(color: Colors.grey.shade800)),
                            labelText: 'Email Address',
                            labelStyle: TextStyle(color: Colors.grey.shade800),
                            hintText: 'Email Address',
                            suffixIcon: const Icon(
                              Icons.email,
                              size: 30,
                              color: Colors.red,
                            ))),
                    const SizedBox(
                      height: 30,
                    ),
                    TextField(
                        obscureText: !pass,
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                gapPadding: 10,
                                borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                                borderSide:
                                BorderSide(color: Colors.grey.shade800)),
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 35, vertical: 25),
                            border: OutlineInputBorder(
                                gapPadding: 10,
                                borderRadius:
                                const BorderRadius.all(Radius.circular(25)),
                                borderSide:
                                BorderSide(color: Colors.grey.shade800)),
                            labelText: 'Password',
                            labelStyle: TextStyle(color: Colors.grey.shade800),
                            hintText: 'Password',
                            suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    pass = !pass;
                                  });
                                },
                                icon: Icon(
                                  pass
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                  color: Colors.red,
                                  size: 30,
                                )))),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Forget Password',
                            style: TextStyle(color: Colors.red),
                          )),
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width,
                        height: 55,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [Colors.purple, Colors.orange],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Hello',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        )),
                    const SizedBox(
                      height: 10,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Or Hello using Social Media Account',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.facebook,
                              color: Colors.blue,
                              size: 35,
                            )),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              UniconsLine.google,
                              color: Colors.red,
                              size: 35,
                            )),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              UniconsLine.twitter,
                              color: Colors.orange,
                              size: 35,
                            )),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              UniconsLine.linkedin,
                              color: Colors.green,
                              size: 35,
                            )),
                      ],
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
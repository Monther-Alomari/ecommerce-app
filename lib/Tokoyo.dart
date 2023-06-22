import 'package:banner_carousel/banner_carousel.dart';

import 'package:flutter/material.dart';

class Tokoyo extends StatefulWidget {
  const Tokoyo({super.key});

  @override
  State<Tokoyo> createState() => _TokoyoState();
}

class _TokoyoState extends State<Tokoyo> {
  int current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(top: 50, right: 20, left: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Text(
                  'TOKOYO',
                  style: TextStyle(
                      fontSize: 45,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepOrangeAccent),
                ),
                const Text('Welcome to Tokoto, Let\'s shop!',
                    style: TextStyle(
                      fontSize: 16,
                    )),
                const SizedBox(
                  height: 75,
                ),
                BannerCarousel(
                    height: 375,
                    activeColor: Colors.deepOrangeAccent,
                    customizedBanners: List.generate(
                        3,
                            (index) => Container(
                          margin: const EdgeInsets.only(bottom: 75),
                          child: Image.asset(
                              'lib/assets/splash_${index + 1}.png'),
                        ))),
                Container(
                  margin: const EdgeInsets.only(top: 125),
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepOrangeAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: const Text(
                      'Continue',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// import 'otp.dart';

class Complete extends StatelessWidget {
  const Complete({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController phoneController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30, right: 20, left: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Text(
                'Complete Profile',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                'CompleteProfile your details or continue \n with social media',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.grey.shade600),
              ),
              const SizedBox(
                height: 50,
              ),
              TextField(
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          gapPadding: 10,
                          borderRadius:
                          const BorderRadius.all(Radius.circular(25)),
                          borderSide: BorderSide(color: Colors.grey.shade800)),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 35, vertical: 25),
                      border: OutlineInputBorder(
                          gapPadding: 10,
                          borderRadius:
                          const BorderRadius.all(Radius.circular(25)),
                          borderSide: BorderSide(color: Colors.grey.shade800)),
                      labelText: 'First Name',
                      labelStyle: TextStyle(color: Colors.grey.shade800),
                      hintText: 'Enter your first name',
                      suffixIcon: Padding(
                        padding: const EdgeInsets.only(
                            right: 20, top: 13, bottom: 13),
                        child: SvgPicture.asset(
                          'assets/icons/User Icon.svg',
                          // ignore: deprecated_member_use
                          color: Colors.black87,
                          fit: BoxFit.contain,
                        ),
                      ))),
              const SizedBox(
                height: 30,
              ),
              TextField(
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          gapPadding: 10,
                          borderRadius:
                          const BorderRadius.all(Radius.circular(25)),
                          borderSide: BorderSide(color: Colors.grey.shade800)),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 35, vertical: 25),
                      border: OutlineInputBorder(
                          gapPadding: 10,
                          borderRadius:
                          const BorderRadius.all(Radius.circular(25)),
                          borderSide: BorderSide(color: Colors.grey.shade800)),
                      labelText: 'Last Name',
                      labelStyle: TextStyle(color: Colors.grey.shade800),
                      hintText: 'Enter your last name',
                      suffixIcon: Padding(
                        padding: const EdgeInsets.only(
                            right: 20, top: 13, bottom: 13),
                        child: SvgPicture.asset(
                          'assets/icons/User Icon.svg',
                          // ignore: deprecated_member_use
                          color: Colors.black87,
                          fit: BoxFit.contain,
                        ),
                      ))),
              const SizedBox(
                height: 30,
              ),
              TextField(
                  controller: phoneController,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          gapPadding: 10,
                          borderRadius:
                          const BorderRadius.all(Radius.circular(25)),
                          borderSide: BorderSide(color: Colors.grey.shade800)),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 35, vertical: 25),
                      border: OutlineInputBorder(
                          gapPadding: 10,
                          borderRadius:
                          const BorderRadius.all(Radius.circular(25)),
                          borderSide: BorderSide(color: Colors.grey.shade800)),
                      labelText: 'Phone Number',
                      labelStyle: TextStyle(color: Colors.grey.shade800),
                      hintText: 'Enter your phone number',
                      suffixIcon: Padding(
                        padding: const EdgeInsets.only(
                            right: 20, top: 13, bottom: 13),
                        child: SvgPicture.asset(
                          'assets/icons/Phone.svg',
                          fit: BoxFit.contain,
                        ),
                      ))),
              const SizedBox(
                height: 30,
              ),
              TextField(
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          gapPadding: 10,
                          borderRadius:
                          const BorderRadius.all(Radius.circular(25)),
                          borderSide: BorderSide(color: Colors.grey.shade800)),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 35, vertical: 25),
                      border: OutlineInputBorder(
                          gapPadding: 10,
                          borderRadius:
                          const BorderRadius.all(Radius.circular(25)),
                          borderSide: BorderSide(color: Colors.grey.shade800)),
                      labelText: 'Address',
                      labelStyle: TextStyle(color: Colors.grey.shade800),
                      hintText: 'Enter your address',
                      suffixIcon: Padding(
                        padding: const EdgeInsets.only(
                            right: 20, top: 13, bottom: 13),
                        child: SvgPicture.asset(
                          'assets/icons/Location point.svg',
                          fit: BoxFit.contain,
                        ),
                      ))),
              Container(
                margin: const EdgeInsets.only(top: 50, bottom: 50),
                width: MediaQuery.of(context).size.width,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {}
                    // Navigator.of(context).push(MaterialPageRoute(
                    //     builder: (context) => OTPScreen(
                    //       phone: phoneController.text,

                ,
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
              Text(
                'By continuing your confirm that you agree \n with our Term and Condition',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey.shade700),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
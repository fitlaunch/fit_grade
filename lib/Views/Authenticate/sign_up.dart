import 'package:fit_grade/Widgets/wiggle_text.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../Account_Page/account_screen.dart';

//todo will basically work for an ugly dude created app
// todo => verification, authentication, firestore,

class SignUp extends StatelessWidget {
  SignUp({
    Key? key,
  }) : super(key: key);

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  //did the following using riverpod on login screen
  static final DateTime date = DateTime.now();
  static final DateFormat formatter = DateFormat('yyyy');
  final String formatted = formatter.format(date);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        //appBar: AppBarPrimary(title: 'SIGN IN'),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: const Text(
            'Create Account',
          ),
        ),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xFFBCE5FC), Colors.blueAccent],
            ),
          ),
          child: SingleChildScrollView(
            child: Container(
              //height: 600,
              //color: Colors.amber,
              margin: const EdgeInsets.all(5),
              child: Column(
                children: [
                  const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: WiggleText(
                        text: 'What is your grade?',
                        shakeOffset: 2,
                        shakeCount: 5,
                      )
                      //Text(
                      // 'What is your fitness grade?',
                      // style: TextStyle(
                      //   fontSize: 22,
                      //   fontStyle: FontStyle.italic,
                      //   fontWeight: FontWeight.bold,
                      //   color: Colors.lightBlue[900],
                      // ),
                      ),

                  Padding(
                    padding: const EdgeInsets.only(top: 50.0, bottom: 100.0),
                    child: Image.asset('assets/images/tacwell_logo.png'),
                  ),

                  //todo Make this container stretch to bottom screen
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 500,
                      margin: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.blue,
                            blurRadius: 15,
                            spreadRadius: 4.0,
                            offset: Offset(
                              5.0,
                              3.0,
                            ),
                          ),
                        ],
                        color: Colors.grey[200],
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(30.0),
                          topRight: Radius.circular(30.0),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(8.0, 25.0, 8.0, 25),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            TextField(
                              controller: _emailController,
                              //onChanged: (){},
                              keyboardType: TextInputType.emailAddress,
                              decoration: const InputDecoration(
                                hintText: 'you@example.com',
                                labelText: 'Email Address',
                                //errorText: 'Something went wrong',
                              ),
                            ),
                            TextField(
                              controller: _passwordController,
                              //onChanged: (){},
                              keyboardType:
                                  const TextInputType.numberWithOptions(),
                              decoration: const InputDecoration(
                                hintText: 'password',
                                labelText: 'Password',
                                //errorText: 'Something went wrong',
                              ),
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            ElevatedButton(
                                onPressed: () {
                                  ///add LOGIN logic
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const AccountScreen()));
                                },
                                child: const Text('Create Account')),
                            const SizedBox(
                              height: 60,
                            ),
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    const Icon(
                                      Icons.star_border_outlined,
                                      color: Colors.black38,
                                      size: 12,
                                    ),
                                    Text(
                                      "copyright ioLaunch $formatted",
                                      style: const TextStyle(
                                        fontSize: 11,
                                        color: Colors.black38,
                                      ),
                                    )
                                  ],
                                )),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

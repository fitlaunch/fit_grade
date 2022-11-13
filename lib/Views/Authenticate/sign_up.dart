import 'package:flutter/material.dart';

import '../Account_Page/account_screen.dart';

//todo will basically work for an ugly dude created app
// todo => verification, authentication, firestore,

class SignUp extends StatelessWidget {
  const SignUp({
    Key? key,
  }) : super(key: key);

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
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'What is your fitness grade?',
                      style: TextStyle(
                        fontSize: 22,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                        color: Colors.lightBlue[900],
                      ),
                    ),
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
                            const TextField(
                              //onChanged: (){},
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                hintText: 'you@example.com',
                                labelText: 'Email Address',
                                //errorText: 'Something went wrong',
                              ),
                            ),
                            const TextField(
                              //onChanged: (){},
                              keyboardType: TextInputType.numberWithOptions(),
                              decoration: InputDecoration(
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
                                              AccountScreen()));
                                },
                                child: const Text('Log In')),
                            const SizedBox(
                              height: 60,
                            ),
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const <Widget>[
                                    Icon(
                                      Icons.star_border_outlined,
                                      color: Colors.black38,
                                      size: 12,
                                    ),
                                    Text(
                                      "copyright FIT Launch, Inc.",
                                      style: TextStyle(
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

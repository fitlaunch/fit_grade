import 'package:fit_grade/Views/Account_Page/account_screen.dart';
import 'package:fit_grade/Widgets/wiggle_text.dart';
import 'package:flutter/material.dart';

//todo will basically work for an ugly, dude created app
// todo => verification, authentication, firestore fix

class Login extends StatelessWidget {
  Login({
    Key? key,
  }) : super(key: key);

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // ref.listen<LoginState>(loginControllerProvider, (previous, state) {
    //   if (state is LoginStateError) {
    //     ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    //       content: Text(state.error),
    //     ));
    //   }
    // });
    return Material(
      child: Scaffold(
        //appBar: AppBarPrimary(title: 'SIGN IN'),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: const Text(
            'Found Your Sign-In Screen',
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
                    padding: const EdgeInsets.symmetric(
                      vertical: 50.0,
                    ),
                    child: Image.asset('assets/images/tacwell_logo.png'),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(8.0, 8, 8, 35),
                    child: WiggleText(
                      text: 'What is your Fitness Grade?',
                      shakeCount: 2,
                      shakeOffset: 5,
                    ),
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
                              controller: emailController,
                              //onChanged: (){},
                              keyboardType: TextInputType.emailAddress,
                              decoration: const InputDecoration(
                                hintText: 'you@example.com',
                                labelText: 'Email Address',
                                //errorText: 'Something went wrong',
                              ),
                            ),
                            TextField(
                              controller: passwordController,
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
                                  // ///add LOGIN logic
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const AccountScreen()));
                                },
                                child: const Text('Log In')),
                            const SizedBox(
                              height: 60,
                            ),
                            ElevatedButton(
                                onPressed: () {
                                  // ///add LOGIN logic
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              AccountScreen()));
                                },
                                child:
                                    const Text('To Profile (not logged in)')),
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

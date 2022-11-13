import 'package:fit_grade/Views/Account_Page/account_screen.dart';
import 'package:flutter/material.dart';

import '../../Widgets/profile_tile.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Fitness Profile'),
        actions: const [Icon(Icons.menu)],
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.blueAccent, Color(0xFFBCE5FC)],
            ),
          ),
          child: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 350.0,
                //todo user upload own background image and/or scroll to select one we make available
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: const AssetImage('assets/images/tropics_bg.jpg'),
                      colorFilter: ColorFilter.mode(
                          Colors.blueAccent.withOpacity(0.3),
                          BlendMode.dstATop),
                      fit: BoxFit.scaleDown),
                ),

                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        //todo placeholder head with user update profile image
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                            "https://www.rd.com/wp-content/uploads/2017/09/01-shutterstock_476340928-Irina-Bg.jpg",
                          ),
                          radius: 60.0,
                        ),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        //todo dynamic in name from user account creation
                        "Alice James",
                        style: TextStyle(
                          fontSize: 22.0,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 25.0,
                      ),
                      CardWidget()
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 70,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            //shrinkWrap: true,
                            physics: const BouncingScrollPhysics(),
                            children: [
                              BMITile(),
                              const SizedBox(width: 20),
                              WaistHipTile(),
                              const SizedBox(width: 20),
                              BMRTile(),
                              const SizedBox(width: 20),
                              Other1Tile(),
                              const SizedBox(width: 20),
                              Other2Tile(),
                            ],
                          ),
                        ),
                      ),
                      // Padding(
                      //   padding: const EdgeInsets.all(8.0),
                      //   child: Container(
                      //       height: 50,
                      //       //todo come back here and figure out why not showing (too sleepy)
                      //       child: Row(
                      //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      //         children: [
                      //           TextField(
                      //             decoration: InputDecoration(
                      //                 fillColor: Colors.green,
                      //                 //border: InputBorder.none,
                      //                 labelStyle:
                      //                     TextStyle(color: Colors.black87),
                      //                 hintText: 'height',
                      //                 hintStyle:
                      //                     TextStyle(color: Colors.black87),
                      //                 labelText: 'height'),
                      //           ),
                      //           TextField(
                      //             decoration: InputDecoration(
                      //                 border: InputBorder.none,
                      //                 hintText: 'weight'),
                      //           ),
                      //           GenderDropdown(),
                      //         ],
                      //       )),
                      // ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "Current Goals:",
                              style: TextStyle(
                                  color: Colors.blueAccent,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 28.0),
                            ),
                          ),
                          IconButton(
                            icon: const Icon(Icons.edit),
                            onPressed: () {
                              //todo function to edit textfield or future dyn user input list below
                            },
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          //todo dynamic user input
                          //todo dynamic up the self description. OR a self generated 3-7 item todo list
                          'My name is Alice and I am  a freelance mobile app developer.\n'
                          'The Fit Grader motivates and help me track my fitness levels.',
                          style: TextStyle(
                            fontSize: 22.0,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w300,
                            color: Colors.black,
                            letterSpacing: 2.0,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      const ContactButton(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ContactButton extends StatelessWidget {
  const ContactButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150.00,
      child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const AccountScreen()),
            );
          },
          //shape:
          //RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),
          // elevation: 0.2,
          // padding: const EdgeInsets.all(0.0),
          child: Ink(
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                  begin: Alignment.centerRight,
                  end: Alignment.centerLeft,
                  colors: [Colors.blueAccent, Colors.lightBlueAccent]),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Container(
              constraints:
                  const BoxConstraints(maxWidth: 150.0, minHeight: 50.0),
              alignment: Alignment.center,
              child: const Text(
                "Test",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 26.0,
                    fontWeight: FontWeight.w400),
              ),
            ),
          )),
    );
  }
}

class CardWidget extends StatelessWidget {
  const CardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
      clipBehavior: Clip.antiAlias,
      color: Colors.white,
      elevation: 9.0,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                children: <Widget>[
                  const Text(
                    "Tests",
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    //todo dynamic number of tests
                    "24",
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.blueGrey[500],
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: <Widget>[
                  const Text(
                    "Batteries",
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    //todo dynamic total number of assessment batteries
                    "6",
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.blueGrey[500],
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: <Widget>[
                  const Text(
                    "Fit Score",
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    "1300",
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.blueGrey[500],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

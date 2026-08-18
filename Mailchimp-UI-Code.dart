import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SignIn UI',
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final formkey = GlobalKey<FormState>();
  String groupValue = 'buyer';

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Form(
        key: formkey,
        child: Stack(
          children: [
            SizedBox(
              height: height * 0.1,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 5,
                ),
                child: Row(
                  children: [
                    Text(
                      'Intuit\nmallchimp',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(width: width * 0.03),
                    Text(
                      'Solution & Services',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(width: width * 0.02),
                    Text(
                      'Resources',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(width: width * 0.02),
                    Text(
                      'Switch to Mallchimp',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(width: width * 0.02),
                    Text(
                      'Pricing',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),

                    const Icon(Icons.search, size: 25),

                    SizedBox(width: width * 0.02),
                    Text(
                      'EN',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(width: width * 0.02),
                    Text(
                      'Sales : +1(800) 315-5959',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: width * 0.02),

                    OutlinedButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              'User Logined Successfully',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            duration: Duration(seconds: 1),
                            backgroundColor: Colors.amberAccent,
                          ),
                        );
                      },
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.circular(30),
                        ),
                      ),
                      child: const Text(
                        'Log In',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),

                    SizedBox(width: width * 0.01),

                    ElevatedButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              'User SignUp Successfully',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            duration: Duration(seconds: 1),
                            backgroundColor: Colors.amberAccent,
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amberAccent,
                        foregroundColor: Colors.black,
                      ),
                      child: Text('Sign Up'),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  flex: 4,

                  child: Padding(
                    padding: const EdgeInsets.only(top: 120, left: 260),
                    child: Column(
                      crossAxisAlignment: .start,
                      children: [
                        Text(
                          'Contact Sales',
                          style: TextStyle(
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        SizedBox(height: height * 0.02),

                        ElevatedButton(
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  'CALLING IS IN PROCESS',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                duration: Duration(seconds: 1),
                                backgroundColor: Colors.greenAccent,
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.amberAccent,
                            foregroundColor: Colors.black,
                          ),
                          child: Text(
                            'Call us +1(800) 315-5959',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),

                        SizedBox(height: height * 0.06),
                        Text(
                          'Find a plan thats right for you.',
                          style: TextStyle(fontSize: 14, color: Colors.black),
                        ),

                        SizedBox(height: height * 0.01),
                        Text(
                          'Experience a demo of Mailchimp.',
                          style: TextStyle(fontSize: 14, color: Colors.black),
                        ),

                        SizedBox(height: height * 0.01),
                        Text(
                          'Explore use Cases Of Your business.',
                          style: TextStyle(fontSize: 14, color: Colors.black),
                        ),

                        SizedBox(height: height * 0.03),
                        Container(
                          height: height * 0.10,
                          width: width * 0.45,
                          decoration: BoxDecoration(color: Colors.black87),
                          child: Center(
                            child: Text(
                              'Need help with your Mailchimp Account ? \n*All Calls with mailchimp Support team are Currently\n On Only English Language ',
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.white60,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 120),
                    child: Column(
                      children: [
                        Text(
                          'Email Us ',
                          style: TextStyle(fontSize: 25, color: Colors.black),
                        ),
                        SizedBox(height: height * 0.01),
                        Row(
                          children: [
                            SizedBox(width: width * 0.14),
                            SizedBox(
                              width: width * 0.18,
                              child: TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  labelText: 'First Name',
                                  labelStyle: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),

                            SizedBox(width: width * 0.01),
                            SizedBox(
                              width: width * 0.18,
                              child: TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  labelText: 'Last Name',
                                  labelStyle: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height: height * 0.04),
                        Row(
                          children: [
                            SizedBox(width: width * 0.14),
                            SizedBox(
                              width: width * 0.18,
                              child: TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  labelText: 'Phone Number',
                                  labelStyle: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),

                            SizedBox(width: width * 0.01),
                            SizedBox(
                              width: width * 0.18,
                              child: TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  labelText: ' Business Mail',
                                  labelStyle: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height: height * 0.04),
                        Row(
                          children: [
                            SizedBox(width: width * 0.14),
                            SizedBox(
                              width: width * 0.18,
                              child: TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  labelText: 'Company Name',
                                  labelStyle: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),

                            SizedBox(width: width * 0.01),
                            SizedBox(
                              width: width * 0.18,
                              child: TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  labelText: 'Website',
                                  labelStyle: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height: height * 0.04),

                        Padding(
                          padding: const EdgeInsets.only(left: 65),
                          child: SizedBox(
                            width: width * 0.37,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                labelText: 'Brifly, tell us the reason of Contacting Us',
                                labelStyle: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),

                        SizedBox(height: height * 0.02),
                        Padding(
                          padding: const EdgeInsets.only(right: 200),
                          child: Text(
                            'Contacting us As a Buyer Or Seller',
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                        SizedBox(height: height * 0.01),

                        Padding(
                          padding: const EdgeInsets.only(left: 190),
                          child: Row(
                            children: [
                              RadioGroup<String>(
                                groupValue: groupValue,
                                onChanged: (value) {
                                  setState(() {
                                    groupValue = value!;
                                  });
                                },
                                child: Row(
                                  children: [
                                    Radio(value: 'buyer'),
                                    Text(
                                      'Buyer',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              RadioGroup<String>(
                                groupValue: groupValue,
                                onChanged: (value) {
                                  setState(() {
                                    groupValue = value!;
                                  });
                                },
                                child: Row(
                                  children: [
                                    Radio(value: 'seller'),
                                    Text(
                                      'Seller',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),

                        SizedBox(height: height * 0.02),

                        Padding(
                          padding: const EdgeInsets.only(right: 350),
                          child: ElevatedButton(
                            onPressed: () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    'Your Complain is Recieved',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                  duration: Duration(seconds: 2),
                                  backgroundColor: Colors.green,
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.amberAccent,
                              foregroundColor: Colors.black,
                            ),
                            child: Text('Send'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../widgets/category_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var value1 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16.0),
            color: Colors.brown.shade200,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      ' Hello! :) ',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 20.0,
                      ),
                    ),
                    SizedBox(height: 6.0,),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Row(
                        children: [
                          Text(
                            'Suwaphat Phengmoen',
                            style: TextStyle(
                              fontSize: 23.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 8.0),
                          Image.asset('assets/images/hand_wave1.png',width: 40.0),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 100.0,
                  height: 100.0,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/profile1.jpg'),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Color.fromARGB(255, 222, 250, 255),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16.0, 24.0, 16.0, 8.0),
                    child: Center(
                      child: Container(
                        padding: EdgeInsets.all(5),
                        child: Text(
                          'Premium',
                          style: TextStyle(
                            fontSize: 25.0, fontWeight: FontWeight.bold , color: Colors.black,),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Center(
                      child: Container(
                        child: Text(
                          'The Secrets to be Fluent in English',
                          style: TextStyle(
                            fontSize: 17.0 , color: Colors.grey,),
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 8.0,
                    ),
                    child: Row(
                      children: [
                        // 1
                        Expanded(
                          child: CategoryButton(
                            text: 'Full Access to Pattern Lessons',
                            icon: Icons.menu_book,
                            color: Colors.purple.shade200,
                            isSelected: value1,
                          ),
                        ),
                        SizedBox(width: 16.0),
                        // 2
                        Expanded(
                          child: CategoryButton(
                            text: 'Unlock All Limitations',
                            icon: Icons.key,
                            color: Colors.pink.shade200,
                            isSelected: value1,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 8.0,
                    ),
                    child: Row(
                      children: [
                        // 3
                        Expanded(
                          child: CategoryButton(
                            text: 'All Topics Available',
                            icon: Icons.star,
                            color: Colors.orangeAccent.shade100,
                            isSelected: value1,
                          ),
                        ),
                        SizedBox(width: 16.0),
                        // 4
                        Expanded(
                          child: CategoryButton(
                            text: 'Personlized Coaching',
                            icon: Icons.perm_contact_cal_rounded,
                            color: Colors.blue.shade200,
                            isSelected: value1,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            value1 = !value1;
                          });
                        },
                        child: Center(
                          child: Container(
                            padding: EdgeInsets.all(20),
                            child: Text(
                              '2021 Special Early Birds Offer',
                              style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold , color: Colors.white,),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Center(
                      child: Container(
                        child: Text(
                          'IDR50.000/mounth',
                          style: TextStyle(
                            fontSize: 18.0 , color: Colors.black,),
                        ),
                      ),
                    ),
                  ),

                  CategoryButton(
                      text: 'Start 3 Day Free Trial',
                      icon: Icons.access_alarm_sharp,
                      color: Colors.black54,
                      isSelected: true
                  )

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:linkedin_clone/body.dart';

class Feed extends StatelessWidget {
  const Feed({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildCustomAppBar(),
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 25),
            YourBodyWidget(),
            const SizedBox(height: 30),
          ],
        ),
      )
    );
  }

  // Build custom app bar
  AppBar buildCustomAppBar() {
    return AppBar(
      title: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 55),
            child: Image.asset(
              '../assets/logo.png', 
              height: 35, 
              width: 35,
            ),
          ),
          const SizedBox(width: 16), 
          Container(
             height: 38,
             width: 300,
             padding: const EdgeInsets.symmetric(horizontal: 16),
             decoration: BoxDecoration(
               color: Colors.grey[300], // Set your desired background color
               borderRadius: BorderRadius.circular(8),
             ),
             child: Row(
               children: [
                 const Icon(Icons.search, color: Colors.black),
                 const SizedBox(width: 8),
                 Expanded(
                   child: Container(
                    padding: EdgeInsets.zero,
                     child: const TextField(
                       decoration: InputDecoration(
                         hintText: 'Search',
                         border: InputBorder.none,
                       ),
                     ),
                   ),
                 ),
               ],
             ),
           ),
        ],
      ),
      actions: [
        Row(
          children: [
            buildTab(Icons.home_rounded, 'Home'),
            buildTab(Icons.people_rounded, 'My Network'),
            buildTab(Icons.work_rounded, 'Jobs'),
            buildTab(Icons.message, 'Messaging'),
            buildTab(Icons.notifications, 'Notifications'),
            // Customize profile tab
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                mainAxisSize: MainAxisSize.min, 
                children: [
                 ClipOval(
                    child: Image.asset(
                      '../assets/profile1.jpeg',
                      height: 35, // Adjust the height as needed
                      width: 35, // Adjust the width as needed
                      fit: BoxFit.cover, 
                    ),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 5),
                        child: Text(
                          "Me",
                          style: TextStyle(fontSize: 11),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.zero,
                        child: SizedBox(
                          height: 16,
                          width: 16,
                          child: Icon(Icons.arrow_drop_down_outlined),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const VerticalDivider(),
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: Column(
                children: [
                  IconButton(
                    icon: const Icon(Icons.apps_outlined),
                    onPressed: () {},
                  ),
                  Row(
                    children: [
                      Text(
                        "For Business",
                        style: TextStyle(fontSize: 11, color: Colors.black.withOpacity(0.7)),
                      ),
                      const Padding(
                        padding: EdgeInsets.zero,
                        child: SizedBox(
                          height: 16,
                          width: 16,
                          child: Icon(Icons.arrow_drop_down_outlined),
                        ),
                      ),
                    ],
                  ),
                ]
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 55),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Try Premium for \n',
                      style: const TextStyle(
                        color: Colors.brown,
                        decoration: TextDecoration.underline,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {},
                    ),
                    TextSpan(
                      text: '        MYR0',
                      style: const TextStyle(
                        color: Colors.brown,
                        // decoration: TextDecoration.underline,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {},
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ],
      bottom: const PreferredSize(
        preferredSize: Size.fromHeight(1.0), 
        child: Divider(
          color: Colors.grey,
          height: 1.0,
        ),
      ),
      bottomOpacity: .7, 
    );
  }

    Widget buildTab(IconData icon, String label) {
    return Padding(
      padding: const EdgeInsets.only(left: 20), 
      child: Column(
        mainAxisSize: MainAxisSize.min, 
        children: [
          IconButton(
            icon: Icon(icon),
            onPressed: () {},
          ),
          Padding(
            padding: EdgeInsets.zero,
            child: Text(
              label,
              style: TextStyle(fontSize: 11, color: Colors.black.withOpacity(0.7)), 
            ),
          ),
        ],
      ),
    );
  }
}

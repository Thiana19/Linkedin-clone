import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 15, left: 15),
              child: Text(
                "Recent",
                style: TextStyle(),
              ),
            ),
          ],
        ),

        Row(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 15, left: 15),
              child: Icon(
                Icons.date_range_outlined,
                color: Colors.black,
                ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 15),
              child: Text(
                "Unreal Engine 5 (Expert) - AR/ VR ... ",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 11,
                  color: Colors.black.withOpacity(0.5)
                ),
              ),
            ),
          ],
        ),

        Row(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 10, left: 15),
              child: Icon(
                Icons.date_range_outlined,
                color: Colors.black,
                ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 15),
              child: Text(
                "Data Science with Python and R ...  ",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 11,
                  color: Colors.black.withOpacity(0.5)
                ),
              ),
            ),
          ],
        ),

        Row(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 10, left: 15),
              child: Icon(
                Icons.date_range_outlined,
                color: Colors.black,
                ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 15),
              child: Text(
                "Online Tech Summit on Big Data ...  ",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 11,
                  color: Colors.black.withOpacity(0.5)
                ),
              ),
            ),
          ],
        ),

        const Row(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 25, left: 15),
              child: Text(
                "Groups",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue
                ),
              ),
            ),
          ],
        ),

        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 10, left: 15),
              child: Text(
                "Events",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, right: 15),
              child: Icon(
                Icons.add,
                color: Colors.black,
              ),
            )
          ],
        ),

        const Row(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 10, left: 15),
              child: Text(
                "Followed Hashtags",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue
                ),
              ),
            ),
          ],
        ),

         Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Divider(
            color: Colors.grey.withOpacity(.4), 
            thickness: 1,
            height: 0.2,
          ),
        ),

        Padding(
              padding: const EdgeInsets.only(top: 10, left: 15),
              child: Text(
                "Discover more",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black.withOpacity(0.4)
                ),
              ),
            ),
       

      ],
    );
  }
}
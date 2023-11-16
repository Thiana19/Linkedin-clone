import 'package:flutter/material.dart';
import 'package:linkedin_clone/profile.dart';

class YourBodyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 55, left: 70),
      child: Row(
        children: [
          // Profile card portion
          Expanded(
            flex: 1,
            child: Column(
              children: [
                Container(
                  height: 400,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.black.withOpacity(0.3), 
                      width: 0.5
                    ),
                    borderRadius: BorderRadius.circular(12)
                  ),
                  child: Center(
                    child: ProfileInfo(),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  height: 300,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.black.withOpacity(0.3), 
                      width: 0.5
                    ),
                    borderRadius: BorderRadius.circular(12)
                  ),
                  child: Center(
                    child: DiscoverMore(),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 20), // Increase spacing between portions
          // Post portion
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.green, // Set your desired color
              child: const Center(
                child: Text('Middle Portion'),
              ),
            ),
          ),
          const SizedBox(width: 20), // Increase spacing between portions
          // Right portion (1/4)
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.orange, // Set your desired color
              child: const Center(
                child: Text('Right Portion'),
              ),
            ),
          ),
        ],
      ),
    );
  }

    // ignore: non_constant_identifier_names
    Widget ProfileInfo() {
    return Column(
      children: [
        Stack(
          children: [
            // Cover image
            Container(
              height: 90.0,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("../assets/cover.jpg"),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadiusDirectional.only(
                  topStart: Radius.circular(12),
                  topEnd: Radius.circular(12)
                ),
              ),
            ),
            // Circular profile picture
            Positioned(
              top: 30.0,
              left: 100.0,
              child: FractionalTranslation(
                translation: const Offset(0.0, 0.5),
                child: ClipOval(
                  child: Container(
                    height: 60.0,
                    width: 60.0,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("../assets/profile1.jpeg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        
        const Padding(
          padding: EdgeInsets.only(top: 45),
          child: Text(
            "Mamadou Thiana Cisse",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Text(
            "Junior Software Engineer",
            style: TextStyle(
              color: Colors.black.withOpacity(0.7),
              fontSize: 10,
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Divider(
            color: Colors.grey.withOpacity(.4), 
            thickness: 1,
            height: 0.2,
          ),
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 15),
              child: Text(
                "Profile Viewers",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 11,
                  color: Colors.black.withOpacity(0.5)
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 15, right: 15),
              child: Text(
                "20",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 11,
                  color: Colors.blue,
                ),
              ),
            )
          ],
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 15),
              child: Text(
                "Post impressions",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 11,
                  color: Colors.black.withOpacity(0.5)
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10, right: 15),
              child: Text(
                "2",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 11,
                  color: Colors.blue,
                ),
              ),
            )
          ],
        ),

        Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Divider(
            color: Colors.grey.withOpacity(.4), 
            thickness: 1,
            height: 0.2,
          ),
        ),

        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 15),
              child: Text(
                "Strengthen your profile with an AI \nwriting assistant",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black.withOpacity(0.6)
                ),
              ),
            ),
          ],
        ),

        const Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: Icon(
                Icons.square_rounded,
                color: Colors.amber,
                ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5, left: 15),
              child: Text(
                "Try Premium for MYR0",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                  fontSize: 12,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),

        Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Divider(
            color: Colors.grey.withOpacity(.4), 
            thickness: 1,
            height: 0.2,
          ),
        ),

        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 15),
              child: Icon(
                Icons.bookmark_outlined,
                color: Colors.black.withOpacity(0.6),
                ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 15, left: 15),
              child: Text(
                "My items",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget DiscoverMore(){
    return ProfileWidget();
  }
}


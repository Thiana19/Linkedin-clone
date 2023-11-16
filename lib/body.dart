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
          const SizedBox(width: 20),

          // Post portion
          Expanded(
            flex: 2,
            child: Column(
              children: [
                // New Post box
                Container(
                  height: 130,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.black.withOpacity(0.3), 
                      width: 0.5
                    ),
                    borderRadius: BorderRadius.circular(12)
                  ),
                  child: Center(child: NewPost()),
                ),
                // Divider
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          color: Colors.grey.withOpacity(.4),
                          thickness: 1,
                          height: 0.2,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          'Sort by: Recent',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                // Feed
                Container(
                  height: 565,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.black.withOpacity(0.3), 
                      width: 0.5
                    ),
                    borderRadius: BorderRadius.circular(12)
                  ),
                  child: Center(
                    child: Posts(),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 20), 
          
          // Right portion
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
                  child: Center(child: PageToFollowCard()),
                ),
                const SizedBox(height: 10),
                Container(
                  height: 230,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.black.withOpacity(0.3), 
                      width: 0.5
                    ),
                    borderRadius: BorderRadius.circular(12)
                  ),
                  child: Center(child: HiringCard()),
                ),
                
                Container(
                  padding: const EdgeInsets.all(16.0),
                  color: Colors.grey[200],
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        '../assets/LinkedIn.png',
                        width: 80,
                        height: 30,
                      ),
                      const SizedBox(width: 0),
                      Text(
                        'LinkedIn Corporation © 2023',
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

  Widget PageToFollowCard(){
    return Column(
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 15, left: 15),
              child: Text(
                "Add to your feed",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 15, right: 15),
              child: Icon(
                Icons.info_rounded,
                color: Colors.black,
              ),
            )
          ],
        ),

        Padding(
          padding: const EdgeInsets.only(top: 5),
            child: ListTile(
              leading: const CircleAvatar(
                radius: 30.0,
                backgroundImage: AssetImage('../assets/app.png'),
                backgroundColor: Colors.transparent,
              ),
              title: const Text(
                'Apple',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14.0,
                ),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Computer and Electronics Manufacturing',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 10.0,
                    ),
                  ),
                  const SizedBox(height: 6.0),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white, 
                      onPrimary: Colors.black, 
                      side: BorderSide(color: Colors.black), 
                      fixedSize: Size(120, 20), 
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.add,
                          color: Colors.black.withOpacity(.4)
                        ),
                        Text('Follow',
                        style: TextStyle(
                          color: Colors.black.withOpacity(.4),
                          fontWeight: FontWeight.bold
                        ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),

          Padding(
          padding: const EdgeInsets.only(top: 5),
            child: ListTile(
              leading: const CircleAvatar(
                radius: 30.0,
                backgroundImage: AssetImage('../assets/google.png'),
                backgroundColor: Colors.transparent,
              ),
              title: const Text(
                'Google',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14.0,
                ),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Software Development',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 10.0,
                    ),
                  ),
                  const SizedBox(height: 6.0),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white, 
                      onPrimary: Colors.black, 
                      side: BorderSide(color: Colors.black), 
                      fixedSize: Size(120, 20), 
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.add,
                          color: Colors.black.withOpacity(.4)
                        ),
                        Text('Follow',
                        style: TextStyle(
                          color: Colors.black.withOpacity(.4),
                          fontWeight: FontWeight.bold
                        ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),

          Padding(
          padding: const EdgeInsets.only(top: 5),
            child: ListTile(
              leading: const CircleAvatar(
                radius: 30.0,
                backgroundImage: AssetImage('../assets/netflix.png'),
                backgroundColor: Colors.transparent,
              ),
              title: const Text(
                'Netflix',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14.0,
                ),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Entertainment Providers Los Gatos, CA',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 10.0,
                    ),
                  ),
                  const SizedBox(height: 6.0),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white, 
                      onPrimary: Colors.black, 
                      side: const BorderSide(color: Colors.black), 
                      fixedSize: const Size(120, 20), 
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.add,
                          color: Colors.black.withOpacity(.4)
                        ),
                        Text('Follow',
                        style: TextStyle(
                          color: Colors.black.withOpacity(.4),
                          fontWeight: FontWeight.bold
                        ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),

           Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 15, left: 15),
                child: Text(
                  "View all recommendations",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Colors.black.withOpacity(0.3)
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 15),
                child: Icon(
                  Icons.arrow_forward_rounded,
                  color: Colors.black.withOpacity(0.3)
                ),
              )
            ],
          ),
      ],
    );
  }

  Widget HiringCard(){
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("../assets/hiring.png"),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.all(Radius.circular(12.0)), 
      ),
    );
  }

  Widget NewPost(){
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 5),
            child: ListTile(
              leading: const CircleAvatar(
                radius: 30.0,
                backgroundImage: AssetImage('../assets/profile1.jpeg'),
                backgroundColor: Colors.transparent,
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 6.0),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white, 
                      onPrimary: Colors.black, 
                      side: BorderSide(color: Colors.black), 
                      fixedSize: Size(450, 48), 
                    ),
                    child: Row(
                      children: [
                        Text('Start a post',
                        style: TextStyle(
                          color: Colors.black.withOpacity(.4),
                          fontWeight: FontWeight.bold
                        ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  const Icon(
                    Icons.perm_media_rounded,
                    color: Colors.blue,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Text(
                      "Media",
                      style: TextStyle(
                        color: Colors.black.withOpacity(.3),
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  )
                ],
              ),

              Row(
                children: [
                  const Icon(
                    Icons.date_range,
                    color: Colors.orange,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Text(
                      "Event",
                      style: TextStyle(
                        color: Colors.black.withOpacity(.3),
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  )
                ],
              ),

              Row(
                children: [
                  const Icon(
                    Icons.newspaper_outlined,
                    color: Colors.red,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Text(
                      "Write Article",
                      style: TextStyle(
                        color: Colors.black.withOpacity(.3),
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ],
     );
  }

  Widget Posts(){
    return Container(
      child: Text("Hello"),
    );
  }
}


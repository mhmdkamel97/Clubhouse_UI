import 'package:clubhouse_ui/data.dart';
import 'package:clubhouse_ui/widgets/room_card.dart';
import 'package:clubhouse_ui/widgets/user_profile_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            CupertinoIcons.search,
            color: Colors.black,
            size: 28,
          ),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(
              CupertinoIcons.envelope_open,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              CupertinoIcons.calendar,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              CupertinoIcons.bell,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon:  UserProfileImage(imageUrl: currentUser.imageURL, size: 35),
            onPressed: () {},
          ),
        ],
      ),

      body: Stack(
        alignment: Alignment.center,
        children: [
          ListView(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
            children: [
              ...roomList.map((e) => RoomCard(room:e))
            ],
          ),

          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors:[
                   Theme.of(context).scaffoldBackgroundColor.withOpacity(.1),
                    Theme.of(context).scaffoldBackgroundColor,
                  ],
                ),
              ),
            ),
          ),
          
         Positioned(
           bottom: 50,
           child: ElevatedButton.icon(onPressed: (){},
               icon: const Icon(
                 CupertinoIcons.add,
                 size: 20,
                 color: Colors.white,
               ),
                label: const Text(
                  "Start a Room",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
             style: ElevatedButton.styleFrom(
               padding: const EdgeInsets.all(10),
               primary: Theme.of(context).accentColor,
               shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(50),
               ),
             ),
           ),
         ),
        ],
      ),
    );
  }
}

import 'package:clubhouse_ui/data.dart';
import 'package:clubhouse_ui/screens/room_screen.dart';
import 'package:clubhouse_ui/widgets/user_profile_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../models/room.dart';

class RoomCard extends StatelessWidget {
  final Room room;

  const RoomCard({
    super.key,
    required this.room,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> RoomScreen(room: room) )),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                 " ${room.club}🏠",
                  style: Theme.of(context).textTheme.overline!.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                    letterSpacing: 1.0,
                  ),
                ),
                Text(
                  room.name,
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10,),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 100,
                        child: Stack(
                          children: [
                            Positioned(
                              left:28,
                              top:28,
                              child: UserProfileImage(
                                imageUrl: room.speakers[0].imageURL,
                                size: 48,),
                            ),
                            UserProfileImage(
                              imageUrl: room.speakers[1].imageURL,
                              size: 48,),
                          ],
                        )
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ...room.speakers.map((e) => Text(
                                "${e.firstName} ${e.lastName} 💬"
                            ),),

                        const SizedBox(
                          height: 10,
                        ),

                             Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                  text:'${room.speakers.length + room.followedBySpeakers.length + room.others.length} '
                                ),
                                  const WidgetSpan(
                                      child: Icon(
                                        CupertinoIcons.person_fill,
                                        size: 16,
                                        color: Colors.grey,
                                      )
                                  ),

                                  TextSpan(
                                      text:' / ${room.speakers.length} '
                                  ),
                                  const WidgetSpan(
                                      child: Icon(
                                        CupertinoIcons.chat_bubble_fill,
                                        size: 16,
                                        color: Colors.grey,
                                      )
                                  ),
                                ],
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
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:school/utils/colors.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: kheaderColor,
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: SafeArea(
            child: Column(
              children: [
                Container(
                  alignment: Alignment.centerRight,
                  child: RichText(
                    text: TextSpan(
                      text: "Wed",
                      style: TextStyle(
                        color: textColor,
                        letterSpacing: 0,
                        fontWeight: FontWeight.w900,
                      ),
                      children: [
                        TextSpan(
                          text: "10 Oct",
                          style: TextStyle(
                            letterSpacing: -1,
                            color: textColor,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          width: 1,
                          color: Colors.white,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.blueGrey.withOpacity(0.2),
                            blurRadius: 7,
                            spreadRadius: 7,
                            offset: Offset(0, 5),
                          ),
                        ],
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(""),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: [
                        Text(
                          "Hi Steve",
                          style: TextStyle(
                            fontSize: 27,
                            fontWeight: FontWeight.w900,
                            letterSpacing: -0.5,
                            color: textColor,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Here is a list of your schedule \n kindly check..",
                          style: TextStyle(
                            height: 1.8,
                            color: textColor.withOpacity(0.75),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 220,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: ListView(
              children: [
                seeAll("TOTAL CLASSES", 4),
                SizedBox(
                  height: 20,
                ),
                todayClasses(
                    "07:00", "The basics of Typology", "", "Gabriel Sutton"),
                todayClasses(
                    "09:30", "The basics of Programming", "", "Brian Cho"),
                const SizedBox(
                  height: 20,
                ),
                seeAll("YOUR TASKS", 4),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      yourTasks(
                        Colors.red,
                        3,
                        "The basics",
                      ),
                      yourTasks(
                        Colors.green,
                        10,
                        "Design Principles",
                      ),
                      yourTasks(
                        Colors.red,
                        3,
                        "The basics",
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }

  Container yourTasks(Color color, int dayLeft, String title) {
    return Container(
      margin: EdgeInsets.only(right: 15),
      padding: EdgeInsets.all(12),
      height: 170,
      width: 175,
      decoration: BoxDecoration(
          color: color.withOpacity(0.05),
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Deadline",
            style: TextStyle(fontSize: 15, color: Colors.black26),
          ),
          Row(
            children: [
              CircleAvatar(
                radius: 4,
                backgroundColor: color,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                "$dayLeft days left",
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.black54,
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 130,
            child: Text(
              title,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 18,
                color: Colors.black54,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }

  Row seeAll(title, number) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RichText(
          text: TextSpan(
            text: title,
            style: TextStyle(
              fontWeight: FontWeight.w900,
              color: Colors.black,
            ),
            children: [
              TextSpan(
                text: "($number) ",
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
        ),
        Text(
          "See all",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
            color: secondTextColor,
          ),
        ),
      ],
    );
  }

  Container todayClasses(time, title, profile, name) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      height: 110,
      decoration: BoxDecoration(
        color: kCardColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                time,
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                ),
              ),
              Text(
                "AM",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          Container(
            width: 1,
            color: Colors.grey.withOpacity(0.5),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width - 160,
                  child: Text(
                    title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      color: Colors.grey,
                      size: 20,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 160,
                      child: Text(
                        "Room C1, Faculty of Art & Design building",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(profile),
                      radius: 12,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      name,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:school/model/model.dart';
import 'package:school/utils/colors.dart';

class Calender extends StatefulWidget {
  const Calender({super.key});

  @override
  State<Calender> createState() => _CalenderState();
}

class _CalenderState extends State<Calender> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          alignment: Alignment.topCenter,
          color: kCardColor,
          height: size.height,
          child: SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.calendar_today,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    RichText(
                      text: TextSpan(
                          text: "Oct",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w900,
                            color: textColor,
                          ),
                          children: [
                            TextSpan(
                              text: "2024",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ]),
                    ),
                  ],
                ),
                Text(
                  "Today",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: secondTextColor,
                    fontSize: 18,
                    letterSpacing: -0.5,
                  ),
                )
              ],
            ),
          ),
        ),
        Positioned(
          top: 130,
          child: Container(
            height: size.height - 160,
            width: size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      myCalender("S", 7, false),
                      myCalender("M", 8, false),
                      myCalender("T", 9, false),
                      myCalender("W", 10, true),
                      myCalender("Th", 11, false),
                      myCalender("F", 12, false),
                      myCalender("S", 13, false),
                    ],
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: List.generate(
                        tasks.length,
                        (index) {
                          final task = tasks[index];
                          return Container(
                            margin: EdgeInsets.only(bottom: 25),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      width: 20,
                                      height: 13,
                                      decoration: BoxDecoration(
                                        color: Colors.orangeAccent,
                                        borderRadius: BorderRadius.horizontal(
                                          right: Radius.circular(15),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    SizedBox(
                                      width: size.width / 1.15,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          RichText(
                                            text: TextSpan(
                                              text: task.currentTime,
                                              style: TextStyle(
                                                fontWeight: FontWeight.w800,
                                                color: Colors.black,
                                                fontSize: 18,
                                              ),
                                              children: [
                                                TextSpan(
                                                  text: " AM",
                                                  style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Text(
                                            task.remainingTime,
                                            style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Container myCalender(String weekDay, int date, bool isActive) {
    return Container(
      decoration: BoxDecoration(
        color: isActive ? secondTextColor : Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      height: 75,
      width: 50,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            weekDay,
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            date.toString(),
            style: TextStyle(
              color: isActive ? Colors.white : Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

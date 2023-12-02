import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_ui/pages/second_page.dart';
import 'package:task_ui/utils/date_container.dart';
enum Pick {
  a,
  b,
  c,
  d,
  e,
  f,
  g,
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  Pick? picked;
  List iconList = [
    CupertinoIcons.house_fill,
    Icons.folder,
    CupertinoIcons.text_bubble_fill,
    Icons.person,
  ];

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        backgroundColor: Colors.white,
        child: const Center(
          child: Icon(
            Icons.add,
            color: Colors.black,
          ),
        ),
        onPressed: () {

        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar.builder(
          backgroundColor: Colors.black,
          gapLocation: GapLocation.center,
          itemCount: iconList.length,
          tabBuilder: (int index, bool isActive) {
            return Icon(
              iconList[index],
              size: 24,
              color: isActive ? const Color(0xffb5cff8) : Colors.white,
            );
          },
          activeIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          }),
      backgroundColor: const Color(0xff000000),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  Icons.menu_rounded,
                  color: Colors.white,
                  size: 40,
                ),
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50)),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(right: 80),
              child: Text('Manage your\ntask ✎',
                  style: GoogleFonts.kanit(
                    textStyle: const TextStyle(
                      fontSize: 55,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  )),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 5,
                ),
                DateContainer(
                  containerColor:
                      picked == Pick.a ? Colors.white : Colors.black,
                  weekDay: 'Sun',
                  weekDayColor: picked == Pick.a ? Colors.black : Colors.grey,
                  dayNumber: '13',
                  dayNumberColor:
                      picked == Pick.a ? Colors.black : Colors.white,
                  onTap: () {
                    picked = Pick.a;
                    setState(() {});
                  },
                ),
                const SizedBox(
                  width: 5,
                ),
                DateContainer(
                  containerColor:
                      picked == Pick.b ? Colors.white : Colors.black,
                  weekDay: 'Mon',
                  weekDayColor: picked == Pick.b ? Colors.black : Colors.grey,
                  dayNumber: '14',
                  dayNumberColor:
                      picked == Pick.b ? Colors.black : Colors.white,
                  onTap: () {
                    picked = Pick.b;
                    setState(() {});
                  },
                ),
                const SizedBox(
                  width: 5,
                ),
                DateContainer(
                  containerColor:
                      picked == Pick.c ? Colors.white : Colors.black,
                  weekDay: 'Tue',
                  weekDayColor: picked == Pick.c ? Colors.black : Colors.grey,
                  dayNumber: '15',
                  dayNumberColor:
                      picked == Pick.c ? Colors.black : Colors.white,
                  onTap: () {
                    picked = Pick.c;
                    setState(() {});
                  },
                ),
                const SizedBox(
                  width: 5,
                ),
                DateContainer(
                  containerColor:
                      picked == Pick.d ? Colors.white : Colors.black,
                  weekDay: 'Wed',
                  weekDayColor: picked == Pick.d ? Colors.black : Colors.grey,
                  dayNumber: '16',
                  dayNumberColor:
                      picked == Pick.d ? Colors.black : Colors.white,
                  onTap: () {
                    picked = Pick.d;
                    setState(() {});
                  },
                ),
                const SizedBox(
                  width: 10,
                ),
                DateContainer(
                  containerColor:
                      picked == Pick.e ? Colors.white : Colors.black,
                  weekDay: 'Thu',
                  weekDayColor: picked == Pick.e ? Colors.black : Colors.grey,
                  dayNumber: '17',
                  dayNumberColor:
                      picked == Pick.e ? Colors.black : Colors.white,
                  onTap: () {
                    picked = Pick.e;
                    setState(() {});
                  },
                ),
                const SizedBox(
                  width: 10,
                ),
                DateContainer(
                  containerColor:
                      picked == Pick.f ? Colors.white : Colors.black,
                  weekDay: 'Fri',
                  weekDayColor: picked == Pick.f ? Colors.black : Colors.grey,
                  dayNumber: '18',
                  dayNumberColor:
                      picked == Pick.f ? Colors.black : Colors.white,
                  onTap: () {
                    picked = Pick.f;
                    setState(() {});
                  },
                ),
                DateContainer(
                  containerColor:
                      picked == Pick.g ? Colors.white : Colors.black,
                  weekDay: 'Sat',
                  weekDayColor: picked == Pick.g ? Colors.black : Colors.grey,
                  dayNumber: '19',
                  dayNumberColor:
                      picked == Pick.g ? Colors.black : Colors.white,
                  onTap: () {
                    picked = Pick.g;
                    setState(() {});
                  },
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const SecondPage();
                    },
                  ),
                );
              },
              child: Container(
                height: height * 0.28,
                width: width * 0.93,
                decoration: BoxDecoration(
                  color: const Color(0xffb5cff8),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 10),
                          height: 45,
                          width: 110,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white,
                          ),
                          child: const Center(
                            child: Text(
                              'High',
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 10),
                          height: 45,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white,
                          ),
                          child: const Center(
                            child: Icon(Icons.share),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Container(
                      margin: EdgeInsets.only(right: width * 0.15),
                      child: Text(
                        'March dribble shots design.',
                        style: GoogleFonts.kanit(
                          textStyle: const TextStyle(fontSize: 24),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: width * 0.35),
                      child: Text(
                        'Plan for the month',
                        style: GoogleFonts.kanit(
                          textStyle: const TextStyle(fontSize: 24),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 12),
                          child: const Icon(
                            Icons.calendar_month_outlined,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          '17 Mar',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 10),
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50),
                            image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  'https://img.freepik.com/free-photo/young-male-clever-student-wears-glasses-denim-shirt-raises-index-finger-as-gets-idea_273609-8717.jpg?w=900&t=st=1700870239~exp=1700870839~hmac=b8be4ebbabd19d3e09f1fca0be9fe08d0c63206bac15431d43db9e7fc5fc5aad'),
                            ),
                          ),
                        ),
                        const Spacer(),
                        const Icon(CupertinoIcons.text_bubble),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text('4'),
                        const SizedBox(
                          width: 10,
                        ),
                        const Icon(Icons.attachment_rounded),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text('16'),
                        const SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: height * 0.28,
              width: width * 0.93,
              decoration: BoxDecoration(
                color: const Color(0xff313131),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 10),
                        height: 40,
                        width: 105,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white,
                        ),
                        child: const Center(
                          child: Text(
                            'Medium',
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 10),
                        height: 45,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white,
                        ),
                        child: const Center(
                          child: Icon(Icons.share),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Container(
                    margin: const EdgeInsets.only(),
                    child: Text(
                      'Create the "blog" and "Product\npages for the FortRoom website',
                      style: GoogleFonts.kanit(
                        textStyle:
                            const TextStyle(fontSize: 24, color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 12),
                        child: const Icon(
                          Icons.calendar_month_outlined,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        '17 Mar - 11:00 PM',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

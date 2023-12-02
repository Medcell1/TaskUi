import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';

import '../utils/image_row.dart';
import '../utils/priority_selector.dart';
import '../utils/text_field.dart';
import '../utils/text_field_row.dart';

enum Cont { Low, Medium, High }

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  GlobalKey prioritySelectorKey = GlobalKey();
  Cont cont = Cont.Low;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xffb5cff8),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Column(
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        CupertinoIcons.chevron_back,
                        size: 30,
                      ),
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.share_outlined,
                      size: 30,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const Icon(Icons.edit_outlined),
                    const SizedBox(
                      width: 20,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  margin: const EdgeInsets.only(right: 30),
                  child: Text(
                    'March dribble shot\ndesign. Plan for the month',
                    style: GoogleFonts.kanit(
                      textStyle: const TextStyle(
                        fontSize: 30,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
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
                    const SizedBox(
                      width: 10,
                    ),
                    const Column(
                      children: [
                        Text('Assigned to'),
                        Text(
                          'Floyd Wilson',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: width * 0.3,
                    ),
                    const Icon(
                      Icons.calendar_month,
                    ),
                    const Column(
                      children: [
                        Text('Due date'),
                        Text(
                          '16 Feb',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: height * 0.05,
            ),
            Container(
              decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                ),
              ),
              height: height,
              width: width,
              child: Column(
                children: [
                  Expanded(
                    child: ContainedTabBarView(
                      tabBarViewProperties: const TabBarViewProperties(),
                      tabBarProperties: const TabBarProperties(
                        indicatorWeight: 3,
                        height: 60,
                        indicatorColor: Colors.blue,
                        padding: EdgeInsets.only(
                          left: 20,
                          right: 20,
                        ),
                      ),
                      tabs: const [
                        Text(
                          'Overview',
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                        Text(
                          'Activity',
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                      ],
                      views: [
                        SingleChildScrollView(
                          child: Container(
                            color: Colors.black,
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 15,
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                      left: 18, right: 18),
                                  child: const ReadMoreText(
                                    'You need to choose themes for Dribble shots for March and upload tasks. For help. you can contact @alexjohnson, a creative force in the design world. With an artistic flair and an unwavering passion for aesthetics, Alex has left an indelible mark on Dribbble, showcasing a portfolio that seamlessly blends innovation and elegance. His work is not merely a display of technical prowess but a testament to his ability to infuse soul into every pixel. ',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                    ),
                                    trimLines: 4,
                                    colorClickableText: Colors.pink,
                                    trimMode: TrimMode.Line,
                                    trimCollapsedText: '﹀ Read more',
                                    trimExpandedText: '︿ Show less',
                                    moreStyle: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xffb5cff8),
                                    ),
                                    lessStyle: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xffb5cff8),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(left: 10),
                                      child: Text(
                                        'Subtasks',
                                        style: TextStyle(
                                          color: Colors.blue.shade50,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(left: 20),
                                      height: 73,
                                      width: width * 0.95,
                                      decoration: BoxDecoration(
                                        color: const Color(0xffb5cff8),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Row(
                                        children: [
                                          Container(
                                            margin:
                                                const EdgeInsets.only(left: 20),
                                            height: 30,
                                            width: 30,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                            ),
                                            child: const Icon(
                                              Icons.check,
                                              color: Colors.black,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 15,
                                          ),
                                          Text(
                                            'Create a content plan for March',
                                            style: GoogleFonts.kanit(
                                              fontSize: 18,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        showModalBottomSheet(
                                          context: context,
                                          isScrollControlled: true,
                                          backgroundColor: Colors.transparent,
                                          builder: (context) => StatefulBuilder(
                                            builder: (BuildContext context,
                                                StateSetter setState) {
                                              return SingleChildScrollView(
                                                child: Container(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.9,
                                                  decoration:
                                                      const BoxDecoration(
                                                    color: Colors.black,
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      topLeft:
                                                          Radius.circular(25.0),
                                                      topRight:
                                                          Radius.circular(25.0),
                                                    ),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 20,
                                                            right: 20),
                                                    child: Column(
                                                      children: [
                                                        const SizedBox(
                                                          height: 30,
                                                        ),
                                                        const Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Text(
                                                              'Cancel',
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .blue,
                                                                  fontSize: 16),
                                                            ),
                                                            Text(
                                                              'New Task',
                                                              style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontSize: 17,
                                                              ),
                                                            ),
                                                            Text(
                                                              'Done',
                                                              style: TextStyle(
                                                                color:
                                                                    Colors.blue,
                                                                fontSize: 16,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            const SizedBox(
                                                              height: 30,
                                                            ),
                                                            const Text(
                                                              'Title',
                                                              style: TextStyle(
                                                                color: Color(
                                                                    0xffA7A7A7),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                              ),
                                                            ),
                                                            const SizedBox(
                                                              height: 10,
                                                            ),
                                                            TextField(
                                                              decoration:
                                                                  InputDecoration(
                                                                border:
                                                                    OutlineInputBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              20),
                                                                ),
                                                                filled: true,
                                                                fillColor:
                                                                    const Color(
                                                                        0xff313131),
                                                              ),
                                                            ),
                                                            const SizedBox(
                                                              height: 20,
                                                            ),
                                                            const Text(
                                                              'Description',
                                                              style: TextStyle(
                                                                color: Color(
                                                                    0xffA7A7A7),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                              ),
                                                            ),
                                                            const SizedBox(
                                                              height: 10,
                                                            ),
                                                            const TextFeildWidget(),
                                                            const SizedBox(
                                                              height: 15,
                                                            ),
                                                            TextFieldRow(
                                                                width: width),
                                                            const SizedBox(
                                                              height: 20,
                                                            ),
                                                            const Text(
                                                              'Priority',
                                                              style: TextStyle(
                                                                color: Color(
                                                                    0xffA7A7A7),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                              ),
                                                            ),
                                                            const SizedBox(
                                                              height: 10,
                                                            ),
                                                            PrioritySelector(
                                                              key:
                                                                  prioritySelectorKey,
                                                              currentCont: cont,
                                                              onPrioritySelected:
                                                                  (priority) {
                                                                setState(() {
                                                                  cont =
                                                                      priority;
                                                                });
                                                              },
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              );
                                            },
                                          ),
                                        );
                                      },
                                      child: Container(
                                        margin: const EdgeInsets.only(left: 20),
                                        height: 73,
                                        width: width * 0.95,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: const Color(0xffb5cff8),
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        child: Center(
                                          child: Text(
                                            'Add a subtask',
                                            style: GoogleFonts.kanit(
                                                fontSize: 18,
                                                color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(left: 10),
                                      child: Text(
                                        'Attachments',
                                        style: TextStyle(
                                          color: Colors.blue.shade50,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    const ImageRow()
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          color: Colors.black,
                        ),
                      ],
                    ),
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

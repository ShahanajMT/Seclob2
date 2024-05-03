// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:seclob_2/core/constant/constants.dart';
import 'package:seclob_2/view/Home/Widgets/TContainerBurron.dart';
import 'package:seclob_2/view/Home/Widgets/TTexts.dart';

import '../main_page/mainPage.dart';
import 'Widgets/TIconsandText.dart';

import 'Widgets/TTextss.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            // color: Colors.cyan,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    height: MediaQuery.of(context).size.height * 0.48,
                    width: MediaQuery.of(context).size.width,
                    // height: 170,
                    // width: 100,
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //! -------------- TabBar -------------------!//
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // TTabBarView(icons: Icons.arrow_forward_ios_outlined),
                            // TTabBarView(icons: Icons.more_horiz_outlined),

                            CircleAvatar(
                              radius: 20,
                              backgroundImage:
                                  AssetImage('assets/images/arrow_forword.png'),
                            ),

                            CircleAvatar(
                              radius: 20,
                              backgroundImage:
                                  AssetImage('assets/images/menu_horiz.png'),
                            ),
                          ],
                        ),
                        //! -------------- TabBar Close-------------------!//

                        const SizedBox(
                          height: 40,
                        ),
                        //! ------------------- Profile ------------------!//
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/images/Mask group.png'),
                                radius: 50),
                            TTexts(text1: '50', text2: 'Post'),
                            TTexts(text1: '564', text2: 'Following'),
                            TTexts(text1: '564', text2: 'Followes'),
                          ],
                        ),
                        const SizedBox(height: 10),
                        //! -------------------- Close --------------------!//
                        const TTextss(
                            text: 'Rayan Moon',
                            textColor: Colors.indigo,
                            fontWeight: FontWeight.w400,
                            size: 20),
                        const SizedBox(height: 7),
                        TTextss(
                            text: 'Photography',
                            textColor: Colors.indigo.shade300,
                            fontWeight: FontWeight.w300,
                            size: 17),
                        const SizedBox(height: 7),
                        TTextss(
                            text:
                                "\u{1F44B}'You are beautiful and\ni am here to capture it\u{1F44B}'",
                            textColor: Colors.indigo.shade200,
                            fontWeight: FontWeight.w300,
                            size: 16),
                        const SizedBox(height: 12),
                        //! -------------------- ConatinerBtton --------------!//

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Expanded(
                              flex: 2,
                              child: TContainerButton(
                                height: 50,
                                width: 250,
                                text: 'EditProfile',
                                radius: 15,
                                backgroudColor: Colors.indigo,
                                textColor: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              flex: 2,
                              child: TContainerButton(
                                height: 50,
                                width: 250,
                                text: 'Wallet',
                                radius: 15,
                                backgroudColor: Colors.grey.shade700,
                                textColor: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                height: 50,
                                width: 30,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(60),
                                    color: Colors.indigo),
                                child: const Center(
                                  child: Icon(
                                    Icons.call_outlined,
                                    size: 30,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),

                        //! -------------------- ContainerButton Close --------------!//
                      ],
                    ),
                  ),
                ),

                /////////

                Container(
                  height: 50,
                  width: double.infinity,
                  decoration:
                      const BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0.3, 0.3),
                      blurRadius: 4.0,
                      spreadRadius: 1.0,
                    ),
                  ]),
                  // color: Colors.grey.shade400,
                  child: const Padding(
                    padding: EdgeInsets.only(left: 70, right: 80),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //! ------------- Container with verticalDivider --------------- !//
                        Text(
                          'Photos',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w300),
                        ),
                        VerticalDivider(thickness: 2, color: Colors.grey),
                        Text(
                          'Videos',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w300),
                        ),
                        //! ------------- Container with verticalDivider close --------------- !//
                      ],
                    ),
                  ),
                ),

                //! --------- Scrollable Conatiner ---------------!//

                Container(
                  margin: const EdgeInsets.all(10),
                  width: 400,
                  //height: 700,
                  height: MediaQuery.of(context).size.height * 0.4,
                  color: Colors.white,
                  child: GridView.builder(
                      scrollDirection: Axis.vertical,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 1,
                        mainAxisSpacing: 1,
                      ),
                      itemCount: 12,
                      itemBuilder: (context, index) {
                        return Container(
                          //height: 140,
                          width: 100,
                          //color: Colors.green,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                  image: NetworkImage(kProfileImage),
                                  fit: BoxFit.cover)),
                          margin: const EdgeInsets.only(
                              left: 3, right: 3, top: 2, bottom: 0),
                          child: const Row(
                            children: [
                              TIconsandText(
                                  icon: Icons.favorite_outline_sharp,
                                  text: '15.3K',
                                  size: 20),
                              SizedBox(height: 10),
                              TIconsandText(
                                  icon: Icons.comment_outlined,
                                  text: '200',
                                  size: 20),
                            ],
                          ),
                        );
                      }),
                ),

                //! --------------------- Scrollable Container end ---------- !//
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: const BotNav(),
    );
  }
}

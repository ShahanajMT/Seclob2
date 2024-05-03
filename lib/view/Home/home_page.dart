// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:seclob_2/core/constant/constants.dart';
import 'package:seclob_2/view/Home/Widgets/TContainerBurron.dart';
import 'package:seclob_2/view/Home/Widgets/TTexts.dart';

import 'Widgets/TIconsandText.dart';
import 'Widgets/TTabBarView.dart';
import 'Widgets/TTextss.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.6,
              width: MediaQuery.of(context).size.width,
              color: Colors.red,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  height: 170,
                  width: 100,
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //! -------------- TabBar -------------------!//
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TTabBarView(icons: Icons.arrow_forward_ios_outlined),
                          TTabBarView(icons: Icons.more_horiz_outlined),
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
                              backgroundImage: NetworkImage(kProfileImage),
                              radius: 60),
                          TTexts(text1: '50', text2: 'Post'),
                          TTexts(text1: '564', text2: 'Following'),
                          TTexts(text1: '564', text2: 'Followes'),
                        ],
                      ),
                      const SizedBox(height: 10),
                      //! -------------------- Close --------------------!//
                      const TTextss(
                          text: 'ShahanajShanu',
                          textColor: Colors.indigo,
                          fontWeight: FontWeight.w400,
                          size: 20),
                      const SizedBox(height: 7),
                      TTextss(
                          text: 'Flutter Developer',
                          textColor: Colors.indigo.shade300,
                          fontWeight: FontWeight.w300,
                          size: 17),
                      const SizedBox(height: 7),
                      TTextss(
                          text:
                              'You are beautiful and\ni am here to capture it',
                          textColor: Colors.indigo.shade200,
                          fontWeight: FontWeight.w300,
                          size: 16),
                      const SizedBox(height: 12),
                      //! -------------------- ConatinerBtton --------------!//

                      Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Expanded(
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
                            width: 15,
                          ),
                          Expanded(
                            child: TContainerButton(
                              height: 50,
                              width: 250,
                              text: 'Wallet',
                              radius: 15,
                              backgroudColor: Colors.grey.shade700,
                              textColor: Colors.white,
                            ),
                          ),
                          Expanded(
                            child: CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.indigo.shade600,
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
            ),
            Container(
              height: 50,
              width: double.infinity,
              color: Colors.yellow,
              child: const Padding(
                padding: EdgeInsets.only(left: 80, right: 80),
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
                    VerticalDivider(thickness: 2, color: Colors.green),
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
              width: 500,
              height: MediaQuery.of(context).size.height * 0.67,
              color: Colors.cyan,
              child: GridView.builder(
                scrollDirection: Axis.vertical,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                ),
                itemCount: 12,
                itemBuilder: (context, index) => Container(
                  height: 200,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                          image: NetworkImage(kProfileImage),
                          fit: BoxFit.cover)),
                  margin: const EdgeInsets.only(
                      left: 5, right: 5, top: 5, bottom: 5),
                  child: const Row(
                    children: [
                      TIconsandText(
                          icon: Icons.favorite_outline_sharp,
                          text: '15.3K',
                          size: 20),
                      SizedBox(height: 10),
                      TIconsandText(
                          icon: Icons.comment_outlined, text: '200', size: 20),
                    ],
                  ),
                ),
              ),
            ),
            //! --------------------- Scrollable Container end ---------- !//
          ],
        ),
      ),
    );
  }
}
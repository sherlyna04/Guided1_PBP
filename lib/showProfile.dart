import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gd1_a_1604/isiShowProfile.dart';
import 'package:gd1_a_1604/utilities/constant.dart';

class ShowProfile extends StatelessWidget{
  const ShowProfile({super.key});

  @override
  Widget build(BuildContext context){
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 255, 214, 214),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            }, 
            icon: Icon(
              FontAwesomeIcons.backward,
            )),
            title: Text('Profile'),
            centerTitle: true,
            actions: [
              IconButton(onPressed: () {}, 
              icon: Icon(Icons.notifications))
            ],
        ),
        backgroundColor: kColor,
        body: Center(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 50),
                child: Row(
                  children: [
                    kSizeBox2,
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('images/download.jpg')),
                    kSizeBox2,
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Sherlyna Alfelia', style: kTextSytle4),
                          Text('FLUTTER DEVELOPER', style: kTextStyle5),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Text('3', style: kTextStyle3),
                          Text('Posts', style: kTextStyle3),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Text('3', style: kTextStyle3),
                          Text('Followers', style: kTextStyle3),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Text('10', style: kTextStyle3),
                          Text('Following', style: kTextStyle3),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              kSizeBox2, //kSizeBox
              IsiShowProfile()
            ],
          ),
        ),
         floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
              FloatingActionButton(
                  child: Icon(
                    Icons.home
                  ),
                  backgroundColor: Color.fromARGB(255, 255, 214, 214),
                  onPressed: () {
                    //...
                  },
                  heroTag: null,
                ),
                SizedBox(
                  width: 10,
                ),
                FloatingActionButton(           
                  child: Icon(
                    Icons.arrow_back
                  ),
                  backgroundColor: Color.fromARGB(255, 255, 214, 214),
                  onPressed: () {Navigator.pop(context);},
                  heroTag: null,
                )
          ]
        )
      )
    );
  }
}
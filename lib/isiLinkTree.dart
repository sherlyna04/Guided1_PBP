import 'package:flutter/material.dart';
import 'package:gd1_a_1604/elementLinkTree.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gd1_a_1604/service/directToLink.dart';

class Isilinktree extends StatefulWidget {
  const Isilinktree({super.key});

  @override
  State<Isilinktree> createState() => _IsiLinkTreeState();
}

class _IsiLinkTreeState extends State<Isilinktree>{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CardForlinkTree(
          icon: Icons.phone, 
          text: '+62 878 6627 7606',
        ),
        CardForlinkTree(
          text: 'sherlynaalfelia04@gmail.com',
          icon: Icons.email,
          onPressed: (){
            Direct.launchURL('https://www.gmail.com/');
          },
        ),
        // CardForlinkTree(
        //   text: 'Instagram',
        //   icon: FontAwesomeIcons.instagram,
        //   onPressed: () {
        //     Direct.launchURL('https://www.instagram.com/');
        //   },
        // ),
        // CardForlinkTree(
        //   text: 'Facebook',
        //   icon: FontAwesomeIcons.facebook,
        //   onPressed: () {
        //     Direct.launchURL('https://www.facebook.com/');
        //   },
        // ),
        // CardForlinkTree(
        //   text: 'Youtube',
        //   icon: FontAwesomeIcons.youtube,
        //   onPressed: () {
        //     Direct.launchURL('https://www.youtube.com/');
        //   },
        // ),
      ],
    );
  }
}
// import 'package:flutter/material.dart';
// import 'package:gd1_a_1604/showProfile.dart';
// import 'package:gd1_a_1604/isiLinkTree.dart';
// import 'package:gd1_a_1604/isiLogo.dart';
// import 'package:gd1_a_1604/utilities/constant.dart';

// void main() => runApp(const MyApp());
// class MyApp extends StatelessWidget{
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context){
//     return MaterialApp(
//       home: const MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget{
//   const MyHomePage({super.key});
 
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context){
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: const Color.fromARGB(255, 0, 0, 0),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               TextButton(
//                 onPressed: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => const ShowProfile()),
//                     );
//                 },
//                 child: const CircleAvatar(
//                   radius: 50,
//                   backgroundImage: AssetImage('images/download.jpg'),
//                 ),
//               ),
//               // const Text(
//               //   'Sherlyna Alfelia',
//               //   style: kTextStyle1,
//               // ),
//               const Text(
//                 'LOGIN',
//                 style: kTextStyle1,
//               ),
//               kSizeBox,
//               const Isilinktree(),
//               kSizeBox,
//               // const IsiLogo(),
//               const Text(
//                 'Belum punya akun? register',
//                 style: kTextStyle2,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:gd1_a_1604/showProfile.dart';
import 'package:gd1_a_1604/isiLinkTree.dart';
import 'package:gd1_a_1604/utilities/constant.dart';
import 'package:flutter/gestures.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ShowProfile()),
                  );
                },
                child: const CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('images/download.jpg'),
                ),
              ),
              const Text(
                'LOGIN',
                style: kTextStyle1,
              ),
              kSizeBox,
              const Isilinktree(),
              kSizeBox,
              // Menyusun "Belum punya akun?" dan "register" dalam satu baris
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Belum punya akun? ',
                      style: kTextStyle2, // Gaya teks untuk "Belum punya akun?"
                    ),
                    TextSpan(
                      text: 'register',
                      style: kTextStyle2.copyWith(
                        decoration: TextDecoration.underline, // Memberikan underline pada teks "register"
                      ),
                      recognizer: TapGestureRecognizer()..onTap = () {
                        // Navigasi ke halaman lain ketika "register" diklik
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ShowProfile(), // ganti dengan halaman tujuanmu
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



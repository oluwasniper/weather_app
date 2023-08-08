import 'package:flutter/material.dart';

// class MyWidget extends StatelessWidget {
//   const MyWidget({super.key});
// i
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body:Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Image.network('https://images.unsplash.com/photo-1505506874110-6a7a69069a08?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8c3BhY2V8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60'),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//              Text('Montreal')
//             ],
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text('19C')
//             ],
//           ),
//            Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//              Text('Mostly clear')
//           ],
//          ),
//          Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text('H:24 , L:18 ')
//           ],
//          )
//         ],) ,
//     );
//   }
// }

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/Imagebackground.jpg"),
                  fit: BoxFit.cover)),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height/4.5,
          left: MediaQuery.of(context).size.height/7,
          child: const Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text('Montreal')],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text('19C')],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text('Mostly clear')],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text('H:24 , L:18 ')],
            ),
          ]),
        ),
      ]),
    );
  }
}

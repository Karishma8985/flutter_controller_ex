// example 1: text editing contoller
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Login'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: <Widget>[
              Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    'sign in',
                    style: TextStyle(fontSize: 20),
                  )),
              Container(
                width: 200,
                height: 200,
                alignment: Alignment.center,
                child: Image.asset('assets/images/login.png'),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: nameController,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), labelText: 'User Name'),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: TextField(
                  obscureText: true,
                  controller: passwordController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'password',
                  ),
                ),
              ),
              Container(
                  height: 50,
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: ElevatedButton(
                    onPressed: () {
                      print('click me');
                    },
                    child: const Text(
                      'Login',
                      style: TextStyle(fontSize: 20),
                    ),
                  ))
            ],
          ),
        ));
  }
}


// // example 2 : for textfield controller
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MaterialApp(
//     home: MyApp(),
//   ));
// }

// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   final TextEditingController nameController = TextEditingController();
//   final TextEditingController passwordController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Login'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(10),
//         child: ListView(
//           children: <Widget>[
//             Container(
//               alignment: Alignment.center,
//               padding: const EdgeInsets.all(10),
//               child: const Text(
//                 'sign in',
//                 style: TextStyle(fontSize: 20),
//               ),
//             ),
//             Container(
//               width: 200,
//               height: 200,
//               alignment: Alignment.center,
//               child: Image.asset('assets/images/login.png'),
//             ),
//             Container(
//               padding: const EdgeInsets.all(10),
//               child: TextFormField(
//                 controller: nameController,
//                 decoration: const InputDecoration(
//                   border: OutlineInputBorder(),
//                   labelText: 'User Name',
//                 ),
//               ),
//             ),
//             Container(
//               padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
//               child: TextFormField(
//                 obscureText: true,
//                 controller: passwordController,
//                 decoration: const InputDecoration(
//                   border: OutlineInputBorder(),
//                   labelText: 'Password',
//                 ),
//               ),
//             ),
//             Container(
//               height: 50,
//               padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
//               child: ElevatedButton(
//                 onPressed: () {
//                   print('click me');
//                 },
//                 child: const Text(
//                   'Login',
//                   style: TextStyle(fontSize: 20),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


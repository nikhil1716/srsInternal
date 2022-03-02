import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:sizer/sizer.dart';

import 'Loginpage/loginpage_ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Sizer',
          theme: ThemeData.light(),
          home: Loginhomepage(),
        );
      },
    );
  }
}
// import 'package:conditional_questions/conditional_questions.dart';
// import 'package:flutter/material.dart';


// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key? key, this.title}) : super(key: key);

//   final String? title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   final _key = GlobalKey<QuestionFormState>();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title!),
//       ),
//       body: ConditionalQuestions(
//         key: _key,
//         children: questions(),
//         trailing: [
//           MaterialButton(
//             color: Colors.deepOrange,
//             splashColor: Colors.orangeAccent,
//             onPressed: () async {
//               if (_key.currentState!.validate()) {
//                 print("validated!");
//               }
//             },
//             child: Text("Submit"),
//           )
//         ],
//         leading: [Text("TITLE")],
//       ),
//     );
//   }
// }
// List<Question> questions() {
//   return [
//     Question(
//       question: "What is your name?",
//       //isMandatory: true,
//       validate: (field) {
//         if (field.isEmpty) return "Field cannot be empty";
//         return null;
//       },
//     ),
//     PolarQuestion(
//         question: "Have you made any donations in the past?",
//         answers: ["Yes", "No"],
//         isMandatory: true),
//     PolarQuestion(
//         question: "In the last 3 months have you had a vaccination?",
//         answers: ["Yes", "No"]),
//     PolarQuestion(
//         question: "Have you ever taken medication for HIV?",
//         answers: ["Yes", "No"]),
//     NestedQuestion(
//       question: "The series will depend on your answer",
//       answers: ["Yes", "No"],
//       children: {
//         'Yes': [
//           PolarQuestion(
//               question: "Have you ever taken medication for H1n1?",
//               answers: ["Yes", "No"]),
//           PolarQuestion(
//               question: "Have you ever taken medication for Rabies?",
//               answers: ["Yes", "No"]),
//           Question(
//             question: "Comments",
//           ),
//         ],
//         'No': [
//           NestedQuestion(
//               question: "Have you sustained any injuries?",
//               answers: [
//                 "Yes",
//                 "No"
//               ],
//               children: {
//                 'Yes': [
//                   PolarQuestion(
//                       question: "Did it result in a disability?",
//                       answers: ["Yes", "No", "I prefer not to say"]),
//                 ],
//                 'No': [
//                   PolarQuestion(
//                       question: "Have you ever been infected with chicken pox?",
//                       answers: ["Yes", "No"]),
//                 ]
//               }),
//         ],
//       },
//     )
//   ];
// }
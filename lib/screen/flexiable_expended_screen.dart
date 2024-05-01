import 'package:first_app/commonWidget/my_button.dart';
import 'package:first_app/commonWidget/my_snackbar.dart';
import 'package:flutter/material.dart';

class FlexiableExpendedScreen extends StatelessWidget {
  const FlexiableExpendedScreen({super.key});

  // _showSnackbar() {
  //   ScaffoldMessenger.of(context, {super.key}).showSnackBar(SnackBar(
  //       content = const Text("hello world"),
  //       Duration = const Duration(seconds: 2)));
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Flexible(
            fit: FlexFit.loose,
            flex: 1,
            child: Container(
              // height: 200,
              width: double.infinity,
              color: Colors.amber,
              child: Center(
                  child: MyButton(
                      onPressed: () {
                        MySnackBar(message: "button1", context: context);
                      },
                      text: "Button1")),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
                // height: 200,
                width: double.infinity,
                color: const Color.fromARGB(255, 181, 26, 26),
                child: Center(
                  child: MyButton(
                    onPressed: () {
                      MySnackBar(
                          message: "button2",
                          context: context,
                          color: Colors.red);
                    },
                    text: "button2",
                  ),
                )),
          ),
        ],
      ),
    );
  }
}

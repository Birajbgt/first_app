import 'package:first_app/commonWidget/my_button.dart';
import 'package:first_app/commonWidget/my_textform%20firld.dart';
import 'package:first_app/model/student_detail_model.dart';
import 'package:flutter/material.dart';

class StudentDetails extends StatefulWidget {
  const StudentDetails({super.key});

  @override
  State<StudentDetails> createState() => _StudentDetailsState();
}

class _StudentDetailsState extends State<StudentDetails> {
  String? first;
  String? second;
  String? address;
  String? result;
  final formKey = GlobalKey<FormState>();
  final gap = const SizedBox(
    height: 8,
  );
  StudentModel? studentModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Students Details"),
      ),
      body: Form(
        key: formKey,
        child: Column(
          children: [
            MyTextFormField(
                onChanged: (value) {
                  first = value;
                },
                text: 'First Name'),
            gap,
            MyTextFormField(
                onChanged: (value) {
                  first = value;
                },
                text: 'Last Name'),
            gap,
            MyTextFormField(
                onChanged: (value) {
                  first = value;
                },
                text: 'Address'),
            gap,
            MyButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    setState(() {
                      {
                        studentModel = StudentModel(
                            fname: first!, lname: second!, address: address!);
                      }
                      result = studentModel!.save();
                    });
                  }
                },
                text: "Save"),
            gap,
            Text("$result"),
          ],
        ),
      ),
    );
  }
}

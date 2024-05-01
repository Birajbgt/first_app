// import 'package:first_app_32a/model/arithemetic_model.dart';
import 'package:first_app/model/arithemetic_model.dart';
import 'package:flutter/material.dart';

class HelloWorldScreen extends StatefulWidget {
  const HelloWorldScreen({super.key});

  @override
  State<HelloWorldScreen> createState() => _HelloWorldScreenState();
}

class _HelloWorldScreenState extends State<HelloWorldScreen> {
  int? first;
  int? second;
  int? result = 0;

  String group = 'my_group';

  //Relationship
  //Loosley coupled
  ArithemeticModel? arithematicModel;

  // Create global key for form
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'ADD TWO NUMBERS',
          style: TextStyle(
            fontSize: 25,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              // Enter first no
              TextFormField(
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  first = int.parse(value);
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter first number',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter first number";
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 8,
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  second = int.parse(value);
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Second no',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter second number";
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 8,
              ),
              ListTile(
                  title: const Text("Add"),
                  leading: Radio(
                    value: 'add',
                    groupValue: group,
                    onChanged: (String? value) {
                      setState(() {
                        group = value!;
                      });
                    },
                  )),
              ListTile(
                  title: const Text("Subtract"),
                  leading: Radio(
                    value: 'subtract',
                    groupValue: group,
                    onChanged: (String? value) {
                      setState(() {
                        group = value!;
                      });
                    },
                  )),
              ListTile(
                  title: const Text("Multiply"),
                  leading: Radio(
                    value: 'multiply',
                    groupValue: group,
                    onChanged: (String? value) {
                      setState(() {
                        group = value!;
                      });
                      result = arithematicModel!.muntiply();
                    },
                  )),
              ListTile(
                  title: const Text("Divide"),
                  leading: Radio(
                    value: 'divide',
                    groupValue: group,
                    onChanged: (String? value) {
                      setState(() {
                        group = value!;
                      });
                      result = arithematicModel!.divide();
                    },
                  )),
              ElevatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    setState(() {
                      {
                        arithematicModel =
                            ArithemeticModel(first: first!, second: second!);
                      }
                      result = arithematicModel!.add();
                    });
                  }
                },
                child: const Text('Calculate'),
              ),
              const SizedBox(
                height: 8,
              ),
              Text('Sum is: $result',
                  style: const TextStyle(
                    fontSize: 30,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

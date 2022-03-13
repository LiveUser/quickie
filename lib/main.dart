import 'package:flutter/material.dart';
import 'package:quickie/quickie.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}
class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextButton(
                onPressed: ()async{
                  String? result = await quickString(
                    title: const Text("Write something"),
                    context: context,
                    inputFieldPadding: const EdgeInsets.all(10),
                  );
                  print("The result is $result");
                },
                child: const Text(
                  "String",
                ),
              ),
              TextButton(
                onPressed: ()async{
                  int? result = await quickInt(
                    title: const Text("enter an int"),
                    context: context,
                    inputFieldPadding: const EdgeInsets.all(10),
                  );
                  print("The result is $result");
                },
                child: const Text(
                  "int",
                ),
              ),
              TextButton(
                onPressed: ()async{
                  double? result = await quickDouble(
                    title: const Text("enter an double"),
                    context: context,
                    inputFieldPadding: const EdgeInsets.all(10),
                  );
                  print("The result is $result");
                },
                child: const Text(
                  "double",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
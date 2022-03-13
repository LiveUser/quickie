import 'package:flutter/material.dart';
import 'package:translatable_text_field/translatable_text.dart';

//TODO: QuickString
Future<String?> quickString({
  required BuildContext context,
  TextStyle textStyle = const TextStyle(
    color: Colors.white,
  ),
  Color backgroundColor = Colors.black,
  Widget? title,
  EdgeInsets? inputFieldPadding,
  EdgeInsets? inputFieldMargin,
  Language? language,
})async{
  TextEditingController controller = TextEditingController();
  bool submitted = false;
  await showDialog(
   context: context, 
   builder: (ctx)=> AlertDialog(
     title: title,
     content: _SimplifiedTextField(
       controller: controller,
       backgroundColor: backgroundColor,
       title: title,
       inputFieldPadding: inputFieldPadding,
       inputFieldMargin: inputFieldMargin,
       language: language,
     ),
     actions: [
       TextButton(
         onPressed: (){
           Navigator.pop(context);
         }, 
         child: TranslatableText(
           options: [
             TranslateOption(language: Languages.english, text: "cancel"),
             TranslateOption(language: Languages.spanish, text: "cancelar"),
           ], 
           displayLanguage: language ?? Languages.english,
          ),
          style: ButtonStyle(
            overlayColor: MaterialStateProperty.all(backgroundColor),
          ),
        ),
        TextButton(
         onPressed: (){
           submitted  = true;
           Navigator.pop(context);
         }, 
         child: TranslatableText(
           options: [
             TranslateOption(language: Languages.english, text: "submit"),
             TranslateOption(language: Languages.spanish, text: "someter"),
           ], 
           displayLanguage: language ?? Languages.english,
           style: textStyle,
          ),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(backgroundColor),
          ),
        ),
     ],
   ),
  );
  if(submitted){
    return controller.text;
  }
}
//TODO: QuickInt
Future<int?> quickInt({
  required BuildContext context,
  TextStyle textStyle = const TextStyle(
    color: Colors.white,
  ),
  Color backgroundColor = Colors.black,
  Widget? title,
  EdgeInsets? inputFieldPadding,
  EdgeInsets? inputFieldMargin,
  Language? language,
})async{
  TextEditingController controller = TextEditingController();
  bool submitted = false;
  await showDialog(
   context: context, 
   builder: (ctx)=> AlertDialog(
     title: title,
     content: _SimplifiedTextField(
       controller: controller,
       backgroundColor: backgroundColor,
       title: title,
       inputFieldPadding: inputFieldPadding,
       inputFieldMargin: inputFieldMargin,
       language: language,
     ),
     actions: [
       TextButton(
         onPressed: (){
           Navigator.pop(context);
         }, 
         child: TranslatableText(
           options: [
             TranslateOption(language: Languages.english, text: "cancel"),
             TranslateOption(language: Languages.spanish, text: "cancelar"),
           ], 
           displayLanguage: language ?? Languages.english,
          ),
          style: ButtonStyle(
            overlayColor: MaterialStateProperty.all(backgroundColor),
          ),
        ),
        TextButton(
         onPressed: (){
           submitted  = true;
           Navigator.pop(context);
         }, 
         child: TranslatableText(
           options: [
             TranslateOption(language: Languages.english, text: "submit"),
             TranslateOption(language: Languages.spanish, text: "someter"),
           ], 
           displayLanguage: language ?? Languages.english,
           style: textStyle,
          ),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(backgroundColor),
          ),
        ),
     ],
   ),
  );
  if(submitted){
    int submittedInteger;
    try{
      submittedInteger = int.parse(controller.text);
      return submittedInteger;
    }catch(err){
      return null;
    }
  }
}
//TODO: Quickdouble
Future<double?> quickDouble({
  required BuildContext context,
  TextStyle textStyle = const TextStyle(
    color: Colors.white,
  ),
  Color backgroundColor = Colors.black,
  Widget? title,
  EdgeInsets? inputFieldPadding,
  EdgeInsets? inputFieldMargin,
  Language? language,
})async{
  TextEditingController controller = TextEditingController();
  bool submitted = false;
  await showDialog(
   context: context, 
   builder: (ctx)=> AlertDialog(
     title: title,
     content: _SimplifiedTextField(
       controller: controller,
       backgroundColor: backgroundColor,
       title: title,
       inputFieldPadding: inputFieldPadding,
       inputFieldMargin: inputFieldMargin,
       language: language,
     ),
     actions: [
       TextButton(
         onPressed: (){
           Navigator.pop(context);
         }, 
         child: TranslatableText(
           options: [
             TranslateOption(language: Languages.english, text: "cancel"),
             TranslateOption(language: Languages.spanish, text: "cancelar"),
           ], 
           displayLanguage: language ?? Languages.english,
          ),
          style: ButtonStyle(
            overlayColor: MaterialStateProperty.all(backgroundColor),
          ),
        ),
        TextButton(
         onPressed: (){
           submitted  = true;
           Navigator.pop(context);
         }, 
         child: TranslatableText(
           options: [
             TranslateOption(language: Languages.english, text: "submit"),
             TranslateOption(language: Languages.spanish, text: "someter"),
           ], 
           displayLanguage: language ?? Languages.english,
           style: textStyle,
          ),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(backgroundColor),
          ),
        ),
     ],
   ),
  );
  if(submitted){
    double submittedDouble;
    try{
      submittedDouble = double.parse(controller.text);
      return submittedDouble;
    }catch(err){
      return null;
    }
  }
}
class _SimplifiedTextField extends StatelessWidget {
  const _SimplifiedTextField({ 
    Key? key,
    this.textStyle = const TextStyle(
      color: Colors.white,
    ),
    required this.backgroundColor,
    required this.title,
    required this.inputFieldPadding,
    required this.inputFieldMargin,
    required this.language,
    required this.controller,
  }):super(key: key);
  final TextStyle textStyle;
  final Color backgroundColor;
  final Widget? title;
  final EdgeInsets? inputFieldPadding;
  final EdgeInsets? inputFieldMargin;
  final Language? language;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: inputFieldMargin ?? EdgeInsets.zero,
      color: backgroundColor,
      child: TextField(
        controller: controller,
        style: textStyle,
        decoration: InputDecoration(
          isDense: true,
          contentPadding: inputFieldPadding,
        ),
      ),
    );
  }
}
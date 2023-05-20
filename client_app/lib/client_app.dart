import 'package:flutter/material.dart';

class ClientApp extends StatefulWidget{


  @override
  State<StatefulWidget> createState() {
    return _ClientAppState();
  }

}

class _ClientAppState extends State<ClientApp>{

  
  String? _validateEmail(String? text){
    if(text == null || text.isEmpty){
      return 'Email is empty';
    }
    return null;
  }


  @override
  Widget build(Object context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          const Text("Authenticate"),
          
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Enter Email',
            ),
            keyboardType: TextInputType.emailAddress,
            textAlign: TextAlign.center,
            validator: (textValue) => _validateEmail(textValue),
          )
        ]),
      ),
    );
  }

}
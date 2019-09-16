import 'package:flutter/material.dart';

class FormDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Theme(
        data: Theme.of(context).copyWith(primaryColor: Colors.yellow),
        child: Container(
          padding: EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RegisterForm()
            ],
          ),
        ),
      ),
    );
  }
}
class RegisterForm extends StatefulWidget {
  @override
  RegisterFormState createState() => RegisterFormState();
}

class RegisterFormState extends State<RegisterForm> {
  final registerFormKey=GlobalKey<FormState>();
  String username,password;
  bool autovalidate=false;

  void submitRegisterForm(){
    if( registerFormKey.currentState.validate()){
      registerFormKey.currentState.save();
      debugPrint("username: $username");
      debugPrint("password: $password");
      Scaffold.of(context).showSnackBar(
        SnackBar(content: Text("Register..."))
      );
    }else{
      setState(() {
        autovalidate=true;
      });
    }

  }
  String validatorUsername(value){
    if(value.isEmpty){
      return "Username is required";
    }
      return null;
  }
  String validatorPassword(value){
     if(value.isEmpty){
       return "Password is required";
     }
     return null;
  }
  @override
  Widget build(BuildContext context) {
     return Form(
       key: registerFormKey,
       child: Column(
         children: <Widget>[
           TextFormField(
             decoration: InputDecoration(
               labelText: "Username",
               helperText: ""
             ),
             onSaved: (value){
               username=value;
             },
             validator: validatorPassword,
             autovalidate: autovalidate,
           ),
           TextFormField(
             obscureText: true,
             decoration: InputDecoration(
               labelText: "Password",
               helperText: ""
             ),
             onSaved: (value){
               password=value;
             },
             validator: validatorUsername,
             autovalidate: autovalidate,
           ),
           SizedBox(height: 32.0),
           Container(
             width: double.infinity,
             child: RaisedButton(
                 child: Text("Register",style: TextStyle(color: Colors.white)),
                 color: Theme.of(context).accentColor,
                 onPressed: submitRegisterForm
                 ),
           )
         ],
       ),
     );
  }
}

class TextFieldDemo extends StatefulWidget {
  @override
  TextFieldDemoState createState() => TextFieldDemoState();
}

class TextFieldDemoState extends State<TextFieldDemo> {
  final textEditingController =TextEditingController();

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
//    textEditingController.text="落岑";
    textEditingController.addListener(
      (){
        debugPrint("input: ${textEditingController.text}");
      }
    );
  }
  @override
  Widget build(BuildContext context) {
    return TextField(
       controller: textEditingController,
//      onChanged: (value){
//        debugPrint("input: $value");
//      },
      onSubmitted: (value){
        debugPrint("submit: $value");
      },
      decoration: InputDecoration(
          icon: Icon(Icons.person),
          labelText: "账号",
          hintText: "Enter the post account",
//          border: InputBorder.none,
          //border: OutlineInputBorder(),
          filled: true
      ),
    );
  }
}

class ThemeDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).accentColor,
    );
  }
}

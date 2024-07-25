import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {

  final _formkey=GlobalKey<FormState>();

  TextEditingController _firstName=TextEditingController();
  TextEditingController _lastName=TextEditingController();
  TextEditingController _email=TextEditingController();
  TextEditingController _password=TextEditingController();
  TextEditingController _rePassoword=TextEditingController();


  bool isobs = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registration",style: TextStyle(color: Colors.white),),
            backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Container(
        child: Form(
          key: _formkey,
            child: Column(
              children: [
                TextFormField(
                  controller: _firstName,
                  decoration: InputDecoration(
                    label: Text("First Name"),
                    hintText: "First Name",
                    hintStyle: TextStyle(color: Colors.brown),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    suffix: Icon(Icons.search),
                  ),
                  validator: (value){
                    if(value!.isEmpty){
                      return "Please enter first name";
                    }
                  },
                ),
                SizedBox(height: 30,),
                TextFormField(
                  controller: _lastName,
                  decoration: InputDecoration(
                    label: Text("Last Name"),
                    hintText: "Last Name",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    suffix: Icon(Icons.search),
                  ),
                  validator: (value){
                    if(value!.isEmpty){
                      return "please enter last name";
                    }
                  },
                ),
                SizedBox(height: 30,),
                 TextFormField(
                  controller: _email,
                  decoration: InputDecoration(
                    label: Text("Email"),
                    hintText: "Enter your email",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    suffix: Icon(Icons.search),
                  ),
                   validator: (value){
                    if(value!.isEmpty){
                      return "Enter correct email";
                    }
                    if(!value.contains("@")){
                      return "Enter correct email";
                    }
                   },
                ),
                SizedBox(height: 30,),
                TextFormField(
                  controller: _password,
                  obscureText: isobs,
                  decoration: InputDecoration(
                    label: Text("Password"),
                    hintText: "Enter your password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    suffix: IconButton(onPressed: (){
                      isobs = !isobs;
                      setState(() {
                      });
                    },
                        icon: Icon(Icons.visibility),
                    ),
                    suffixIcon: Icon(Icons.abc),

                  ),
                  validator: (value){
                    if(value!.isEmpty){
                      return "please enter password";
                    }
                    if(value.length<8){
                      return "password must be at least 8 digits/cha";
                    }
                  },
                ),
                SizedBox(height: 30,),
                TextFormField(
                  controller: _rePassoword,
                  obscureText: isobs,
                  decoration: InputDecoration(
                    label: Text("Re enter the password"),
                    hintText: "Re enter your password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    suffix: IconButton(
                        onPressed: (){
                          setState(() {
                            isobs: !isobs;
                          });
                        },
                        icon: Icon(Icons.visibility),
                    ),
                    suffixIcon:     Icon(Icons.abc),
                  ),
                  validator: (value){
                    if(value!.isEmpty){
                      return "please enter password";
                    }
                    if(value !=_password){
                      return "password does not match ";
                    }
                  },

                ),
                MaterialButton(
                  minWidth: MediaQuery.of(context).size.width*0.8,
                    color: Colors.blue,
                    onPressed: (){
                    _formkey.currentState!.validate();
                    },
                  child: Text("Register Now!"),

                    ),
              ],

            )),
      ),
    );
  }
}

import 'dart:async';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp ({ Key? key }) : super(key: key);

  @override
  State createState() => _State();
}

class _State extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Login',
              style: TextStyle(
                fontSize: 35,
                color: Colors.teal,
                fontWeight: FontWeight.bold,


              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Form(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal:15),
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: 'Email',
                          hintText: 'Please enter your email address',
                          prefixIcon: Icon(Icons.email),
                          border: OutlineInputBorder(),

                        ),
                        onChanged: (String value){

                        },
                        validator: (value){
                        return value!.isEmpty ?  'Please enter a valid email address' : null;
                                },
                      ),
                    ),

                    SizedBox(height: 30,),


                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          hintText: 'Please enter password',
                          prefixIcon: Icon(Icons.password),
                          border: OutlineInputBorder(),

                        ),
                        onChanged: (String value){

                        },
                        validator: (value){
                        return value!.isEmpty ?  'Please enter a valid password' : null;
                                },
                      ),
                    ),

                    SizedBox(height: 30,),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 35),
                      child: MaterialButton(onPressed: () {},
                      
                      minWidth: double.infinity,

                      child: Text('Login'),
                      color: Colors.teal,
                      textColor: Colors.white,
                      
                      ),
                    ),

                  ],

                ),
                ),
            ),
          ],
        ),


      ),
      
    );
  }
}


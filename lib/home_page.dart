import 'dart:html' as html;
import 'dart:html';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset(
            'assets/ic_launcher_foreground.png',
            width: 85,
            height: 85,
          ),
          const Text('welcome to actiwoo ',
              style: TextStyle(fontFamily: 'futura-heavy')),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () => launchURLBrowser(1),
                child: Image.asset(
                  "assets/facebook_logo.png",
                  scale: 1.5,
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              GestureDetector(
                onTap: () => launchURLBrowser(2),
                child: Image.asset(
                  "assets/google_plus_logo.png",
                  scale: 1.5,
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              GestureDetector(
                onTap: () => launchURLBrowser(3),
                child: Image.asset(
                  "assets/linkedin_logo.png",
                  scale: 1.5,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Text('-- OR --'),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 200,
            height: 35,
            child: TextFormField(
                style: const TextStyle(fontSize: 13),
                cursorColor: Colors.orange,
                cursorHeight: 18,
                cursorRadius: Radius.zero,
                decoration: const InputDecoration(
                    hintText: 'Email',
                    hintStyle: TextStyle(fontSize: 11),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 204, 149, 67))),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 204, 149, 67))))),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: 200,
            height: 35,
            child: TextFormField(
                style: const TextStyle(fontSize: 13),
                cursorColor: Colors.orange,
                cursorHeight: 18,
                cursorRadius: Radius.zero,
                decoration: const InputDecoration(
                    hintText: 'Password',
                    hintStyle: TextStyle(fontSize: 11),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 204, 149, 67))),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 204, 149, 67))))),
          ),
          const SizedBox(
            height: 10,
          ),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
                backgroundColor: Colors.orangeAccent,
                foregroundColor: Colors.orange,
                shadowColor: Colors.orange,
                surfaceTintColor: Colors.deepOrange),
            onPressed: () {},
            child: const Text(
              'login',
              style: TextStyle(color: Colors.black),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          RichText(
            text: TextSpan(children: [
              const TextSpan(text: 'privacy policy '),
              TextSpan(
                text: 'click here!',
                style: const TextStyle(color: Colors.blue),
                recognizer: TapGestureRecognizer()
                  ..onTap = () => html.window
                      .open('https://www.actiwoo.com/privacy-policy/', "_self"),
              )
            ]),
          )
        ])),
      ),
    );
  }
}

launchURLBrowser(int choice) async {
  switch (choice) {
    case 1:
      return html.window.open('https://www.facebook.com/login/', "_self");
    case 2:
      return html.window.open('"https://accounts.google.com/', "_self");

    case 3:
      return html.window.open(
          'https://www.linkedin.com/login?fromSignIn=true&trk=guest_homepage-basic_nav-header-signin',
          "_self");
  }
}

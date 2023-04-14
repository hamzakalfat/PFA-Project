


// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'package:untitled/screens/total/components/dechets_globaux.dart';
import 'package:untitled/screens/total/components/hh.dart';
import 'package:untitled/screens/total/components/participants.dart';

class totalScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 50,
        ),
        MaterialButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => dechetGlob()));
            // Action à effectuer lorsque le bouton est appuyé
          },

          color: Colors.blue,
          child: const Text(
            "les dechets globaux ",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        MaterialButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Participants()));// Action à effectuer lorsque le bouton est appuyé
          },


          color: Colors.blue,
          child: const Text(
            "tous les participants ",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        MaterialButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => hh()));// Action à effectuer lorsque le bouton est appuyé
          },


          color: Colors.blue,
          child: const Text(
            "slfkbsfkbov ",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
        ),
      ],
    );
  }
  }
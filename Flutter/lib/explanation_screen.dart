import 'package:QA/back_button.dart';
import 'package:QA/constants.dart';
import 'package:flutter/material.dart';

class ExplanationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kGreen,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SafeArea(
          child: Column(
            children: [
              CustomBackButton(
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "How the score is calculated",
                  style: kSize25White,
                ),
              ),
              SizedBox(height: 20),
              Align(
                child: Text(
                  "Thousands of stories containing and not containing sexual violence were used to train a language processing model into being able to detect when sexual violence is present in a story.",
                  style: kSize15White,
                ),
              ),
              SizedBox(height: 20),
              Align(
                child: Text(
                  "Scores are between 0 and 1.0 where they represent how sure the model is that an aspect of sexual violence was present",
                  style: kSize15White,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

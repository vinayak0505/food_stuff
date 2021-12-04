import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:food_stuff/src/utils/constants.dart';

class PersonalPage extends StatefulWidget {
  const PersonalPage({Key? key}) : super(key: key);

  @override
  State<PersonalPage> createState() => _PersonalPageState();
}

class _PersonalPageState extends State<PersonalPage> {
  late TapGestureRecognizer _termsConditionRecognizer;
  late TapGestureRecognizer _privacyPolicyRecognizer;

  @override
  void initState() {
    super.initState();
    _termsConditionRecognizer = TapGestureRecognizer()
      ..onTap = () {
        print("Terms and condition tapped");
      };
    _privacyPolicyRecognizer = TapGestureRecognizer()
      ..onTap = () {
        print("Provacy Policy tapped");
      };
  }

  @override
  void dispose() {
    _termsConditionRecognizer.dispose();
    _privacyPolicyRecognizer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(smileyImage),
                  const Text(toLogin),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text(loginFacebookButton),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text(loginGoogleButton),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: kScreenWidth(context),
              child: Center(
                child: RichText(
                  text: TextSpan(
                    text: agreeingPolicy,
                    children: [
                      TextSpan(
                        text: userAgreement,
                        recognizer: _termsConditionRecognizer,
                      ),
                      const TextSpan(
                        text: and,
                      ),
                      TextSpan(
                        text: privacyPolicy,
                        recognizer: _privacyPolicyRecognizer,
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:defifundr_mobile/core/global/constants/app_icons.dart';
import 'package:defifundr_mobile/core/global/constants/app_images.dart';
import 'package:defifundr_mobile/core/global/constants/app_texts.dart';
import 'package:defifundr_mobile/core/global/constants/size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pinput/pinput.dart';

class PasscodeScreen extends StatefulWidget {
  const PasscodeScreen({super.key});

  @override
  State<PasscodeScreen> createState() => _PasscodeScreenState();
}

class _PasscodeScreenState extends State<PasscodeScreen> {
  String passcode = '';

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      width: 55,
      height: 50,
      textStyle: TextStyle(
          fontSize: 30, color: Colors.black, fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          width: 1,
          color: Color(0xffE2E8F0),
        ),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppTexts.passcode,
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        leading: SizedBox(child: Icon(Icons.arrow_back_ios)),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: SvgPicture.asset(
              AppIcons.personSupport,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            children: [
              VerticalMargin(25),
              Center(
                child: Image.asset(
                  AppImages.input,
                  // height: 100,
                  // width: 100,
                ),
              ),
              VerticalMargin(25),
              Text(
                AppTexts.setPasscode,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              ),
              VerticalMargin(50),
              Pinput(
                length: 6,
                defaultPinTheme: defaultPinTheme,
                focusedPinTheme: defaultPinTheme.copyWith(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      width: 2,
                      color: Colors.black,
                    ),
                  ),
                ),
                validator: (s) {},
                pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                showCursor: true,
                onCompleted: (pin) {
                  setState(() {
                    passcode = pin;
                  });
                  print(pin);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

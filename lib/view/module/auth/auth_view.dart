import 'package:flutter/material.dart';
import 'package:flutter_bloc_starter/utils/theme/app_colors.dart';
import 'package:flutter_bloc_starter/utils/theme/styles.dart';
import 'package:flutter_bloc_starter/utils/widgets/common_button.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AuthView extends StatelessWidget {
  const AuthView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 60),
            Container(
              decoration: BoxDecoration(
                color: AppColors.lightPurpleColor,
                borderRadius: BorderRadius.circular(10.0),
              ),
              width: double.infinity,
              padding: EdgeInsets.only(top: 80),
              child: Center(child: SvgPicture.asset("assets/images/hand.svg")),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Text(
                "Welcome to Right Hands",
                style: Styles.tsBlackRegular24,
              ),
            ),
            Text(
              "Book trusted home services in just a few taps—fast, easy, and reliable.",
              style: Styles.tsGrey500Regular14,
              textAlign: TextAlign.center,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 18),
              child: CommonButton(
                onTap: () {},
                buttonName: 'Login',
                buttonBackgroundColor: AppColors.primaryColor,
                buttonTextStyle: Styles.tsWhite500Regular16,
              ),
            ),

            CommonButton(
              onTap: () {},
              buttonName: 'I’m new, sign me up',
              buttonBackgroundColor: AppColors.lightPurpleColor,
              buttonTextStyle: Styles.tsLightPurple500Regular16,
            ),

            SizedBox(height: 10),
            RichText(
              text: TextSpan(
                text: 'By logging in or registering, you agree to our ',
                style: Styles.tsGrey500Regular12,
                children: [
                  TextSpan(
                    text: 'Terms of service',
                    style: Styles.tsLightPurple500Regular12,
                  ),
                  TextSpan(text: ' and ', style: Styles.tsGrey500Regular12),
                  TextSpan(
                    text: 'Privacy Policy',
                    style: Styles.tsLightPurple500Regular12,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

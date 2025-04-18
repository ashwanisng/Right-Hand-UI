import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc_starter/utils/theme/app_colors.dart';
import 'package:flutter_bloc_starter/utils/theme/styles.dart';
import 'package:flutter_bloc_starter/utils/widgets/common_button.dart';
import 'package:flutter_bloc_starter/view/module/home/home_view.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AuthView extends StatefulWidget {
  const AuthView({super.key});

  @override
  _AuthViewState createState() => _AuthViewState();
}

class _AuthViewState extends State<AuthView> {
  int _currentIndex = 0;
  final List<String> _images = [
    'assets/images/hand.svg',
    'assets/images/hand.svg',
    'assets/images/hand.svg',
    'assets/images/hand.svg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraints.maxHeight),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 24.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // Carousel Section with fixed height
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.5,
                        child: Column(
                          children: [
                            Expanded(
                              child: CarouselSlider(
                                options: CarouselOptions(
                                  height: double.infinity,
                                  viewportFraction: 1.0,
                                  enableInfiniteScroll: true,
                                  autoPlay: true,
                                  onPageChanged: (index, reason) {
                                    setState(() => _currentIndex = index);
                                  },
                                ),
                                items: _images.map((assetPath) {
                                  return Container(
                                    decoration: BoxDecoration(
                                      color: AppColors.lightPurpleColor,
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Align(
                                      alignment: Alignment.bottomCenter,
                                      child: SvgPicture.asset(assetPath),
                                    ),
                                  );
                                }).toList(),
                              ),
                            ),
                            const SizedBox(height: 24.0),
                            // Dots Indicator
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: _images.asMap().entries.map((entry) {
                                final isActive = entry.key == _currentIndex;
                                return Container(
                                  width: isActive ? 8.0 : 6.0,
                                  height: isActive ? 8.0 : 6.0,
                                  margin: const EdgeInsets.symmetric(horizontal: 4.0),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: isActive
                                        ? AppColors.primaryColor
                                        : AppColors.primaryColor.withOpacity(0.3),
                                  ),
                                );
                              }).toList(),
                            ),
                          ],
                        ),
                      ),

                      // Content Section
                      const SizedBox(height: 24.0),
                      Text(
                        'Welcome to Right Hands',
                        style: Styles.tsBlackRegular24,
                      ),
                      // const SizedBox(height: 8.0),
                      Text(
                        'Book trusted home services in just a few taps—fast, easy, and reliable.',
                        style: Styles.tsGrey500Regular14,
                        textAlign: TextAlign.center,
                      ),

                      const SizedBox(height: 15.0),
                      // Buttons Section
                      CommonButton(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => HomeView()),
                          );
                        },
                        buttonName: 'Login',
                        buttonBackgroundColor: AppColors.primaryColor,
                        buttonTextStyle: Styles.tsWhite500Regular16,
                      ),
                      const SizedBox(height: 1.0),
                      CommonButton(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => HomeView()),
                          );
                        },
                        buttonName: 'I’m new, sign me up',
                        buttonBackgroundColor: AppColors.lightPurpleColor,
                        buttonTextStyle: Styles.tsLightPurple500Regular16,
                      ),

                      // const SizedBox(height: 1.0),
                      // Terms & Privacy
                      RichText(
                        text: TextSpan(
                          text: 'By logging in or registering, you agree to our ',
                          style: Styles.tsGrey500Regular12,
                          children: [
                            TextSpan(
                              text: 'Terms of service',
                              style: Styles.tsLightPurple500Regular12,
                            ),
                            const TextSpan(text: ' and '),
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
              ),
            );
          },
        ),
      ),
    );
  }
}
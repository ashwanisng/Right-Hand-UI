import 'dart:math' as math;
import 'package:auto_size_text/auto_size_text.dart';
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
  final List<String> _images = List.filled(4, 'assets/images/hand.svg');

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);
    final cappedScale = math.min(mq.textScaleFactor, 1.3);

    return MediaQuery(
      data: mq.copyWith(textScaleFactor: cappedScale),
      child: Scaffold(
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        // Top content: carousel and text
                        Column(
                          children: [
                            // Carousel Section
                            SizedBox(
                              height: constraints.maxHeight * 0.6,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: CarouselSlider(
                                      options: CarouselOptions(
                                        height: double.infinity,
                                        viewportFraction: 1.0,
                                        enableInfiniteScroll: true,
                                        autoPlay: true,
                                        onPageChanged: (index, reason) => setState(() => _currentIndex = index),
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
                                  const SizedBox(height: 40.0),
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

                            const SizedBox(height: 32.0),

                            // Text Section
                            Column(
                              children: [
                                Text(
                                  'Welcome to Right Hands',
                                  style: Styles.tsBlackRegular24,
                                  maxLines: 1,
                                  textScaler: TextScaler.linear(1.0),
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(height: 12.0),
                                Text(
                                  'Book trusted home services in just a few taps—fast, easy, and reliable.',
                                  style: Styles.tsGrey500Regular14,
                                  maxLines: 3,
                                  // minFontSize: 12.0,
                                  textAlign: TextAlign.center,
                                  textScaler: TextScaler.linear(1.0),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 12.0),
                        // Bottom content: buttons and terms
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            CommonButton(
                              onTap: () => Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(builder: (_) => HomeView()),
                              ),
                              buttonName: 'Login',
                              buttonBackgroundColor: AppColors.primaryColor,
                              buttonTextStyle: Styles.tsWhite500Regular16,
                            ),
                            const SizedBox(height: 8.0),
                            CommonButton(
                              onTap: () => Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(builder: (_) => HomeView()),
                              ),
                              buttonName: 'I’m new, sign me up',
                              buttonBackgroundColor: AppColors.lightPurpleColor,
                              buttonTextStyle: Styles.tsLightPurple500Regular16,
                            ),
                            const SizedBox(height: 16.0),
                            Text.rich(
                              textScaler: TextScaler.linear(1.0),
                              TextSpan(
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
                              maxLines: 3,

                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

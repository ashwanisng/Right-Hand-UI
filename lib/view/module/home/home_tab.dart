import 'package:flutter/material.dart';
import 'package:flutter_bloc_starter/utils/theme/app_colors.dart';
import 'package:flutter_bloc_starter/utils/theme/styles.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final textScale = MediaQuery.of(context).textScaleFactor;
    // Limit scaling to prevent overflow on large font settings
    final scale = textScale.clamp(1.0, 1.2);

    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildTopBar(context),
              Divider(color: AppColors.darkGrey2, thickness: 1),
              const SizedBox(height: 8),
              _buildLocationRow(scale),
              const SizedBox(height: 16),
              _buildServicesGrid(screenWidth, scale),
              const SizedBox(height: 24),
              _buildPromoBanner(),
              const SizedBox(height: 24),
              _buildLastBookingCard(scale),
              const SizedBox(height: 24),
              _buildTrustedProfessionals(screenWidth, scale),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTopBar(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(icon: const Icon(Icons.menu), onPressed: () {}),
          SvgPicture.asset('assets/images/logo.svg', height: 40),
          CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage('assets/images/person4.jpeg'),
          ),
        ],
      ),
    );
  }

  Widget _buildLocationRow(double scale) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        children: [
          Icon(Icons.location_on_outlined, color: AppColors.grey500, size: 15),
          const SizedBox(width: 4),
          Expanded(
            child: Text(
              'Dubai, Damac Hills - Carson 2307 + 912YT6',
              style: Styles.tsGrey600Regular12,
              textScaler: TextScaler.linear(1.0),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildServicesGrid(double screenWidth, double scale) {
    final services = [
      {'icon': 'assets/images/house_cleaning.png', 'label': 'Home Cleaning'},
      {'icon': 'assets/images/birds.png', 'label': 'Birds & Pigeon'},
      {'icon': 'assets/images/laundry.png', 'label': 'Dry & Laundry'},
      {'icon': 'assets/images/mover_packer.png', 'label': 'Movers & Packers'},
      {'icon': 'assets/images/gardening.png', 'label': 'Gardening'},
      {'icon': 'assets/images/auto_care.png', 'label': "Auto Care"},
      {
        'icon': 'assets/images/home_maintenance.png',
        'label': 'Home \n Maintenance',
      },
      {'icon': 'assets/images/pet_grooming.png', 'label': 'Pet Grooming'},
    ];

    const crossAxisCount = 4;
    final crossSpacing = 9.0 * (crossAxisCount - 1);
    final paddingTotal = 20.0 * 2;
    final baseItemWidth =
        (screenWidth - paddingTotal - crossSpacing) / crossAxisCount;
    final baseItemHeight = baseItemWidth * 1.2;
    final itemHeight = baseItemHeight * scale;
    final aspectRatio = baseItemWidth / itemHeight;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          mainAxisSpacing: 9,
          crossAxisSpacing: 9,
          childAspectRatio: aspectRatio,
        ),
        itemCount: services.length,
        itemBuilder: (context, index) {
          final item = services[index];
          final paddingVal = baseItemWidth * 0.08 * scale;
          final iconSize = baseItemWidth * 0.5 * scale;
          final fontSize = baseItemWidth * 0.1 * scale;

          return Container(
            padding: EdgeInsets.all(paddingVal),
            decoration: BoxDecoration(
              color: AppColors.lightGrey,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(item['icon']!, height: iconSize, width: iconSize),
                SizedBox(height: 4 * scale),
                Text(
                  item['label']!,
                  textAlign: TextAlign.center,
                  style: Styles.tsGrey600Regular11.copyWith(fontSize: fontSize),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  textScaler: TextScaler.linear(1.0),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildPromoBanner() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.deepPurple.shade50,
            borderRadius: BorderRadius.circular(8),
          ),
          clipBehavior: Clip.hardEdge,
          child: Image.asset("assets/images/banner.png", fit: BoxFit.fill),
        ),
      ),
    );
  }

  Widget _buildLastBookingCard(double scale) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            textScaleFactor: 1.0,
            text: TextSpan(
              text: 'Your Last ',
              style: Styles.tsBlack2Regular16,
              children: [
                TextSpan(
                  text: 'Booking',
                  style: Styles.tsLightPurple500Regular16,
                ),
              ],
            ),
          ),
          Text(
            "Quick access to your previous service.",
            style: Styles.tsLightGrey2Regular12,
            textScaleFactor: 1.0,
          ),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.all(14),
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: AppColors.border, width: 1),
            ),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: AppColors.lightPurpleColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: SvgPicture.asset("assets/images/star.svg"),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Home Cleaning - 3 Hours',
                        style: Styles.tsBlack900Regular14,
                        textScaleFactor: 1.0,
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Jessy A • 12 April, 2025 at 12:00 PM',
                        style: Styles.tsLightGrey600Regular12,
                        textScaleFactor: 1.0,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTrustedProfessionals(double screenWidth, double scale) {
    final professionals = [
      'assets/images/person.jpeg',
      'assets/images/person2.jpeg',
      'assets/images/person3.jpeg',
      'assets/images/person4.jpeg',
    ];

    final baseItemWidth = screenWidth * 0.35;
    final listHeight = baseItemWidth * 1.6 * scale;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
              text: 'Trusted ',
              style: Styles.tsBlack2Regular16,
              children: [
                TextSpan(
                  text: 'Professionals',
                  style: Styles.tsLightPurple500Regular16,
                ),
              ],
            ),
            textScaler: TextScaler.linear(1.0),
          ),
          Text(
            "Check our trusted by hundreds of happy homes.",
            style: Styles.tsLightGrey2Regular12,
            textScaleFactor: 1.0,
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: listHeight,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: professionals.length,
              separatorBuilder: (_, __) => SizedBox(width: 16 * scale),
              itemBuilder: (context, index) {
                final avatarRadius = baseItemWidth * 0.45 * scale;
                final spacing = baseItemWidth * 0.03 * scale;
                return Container(
                  width: baseItemWidth,
                  decoration: BoxDecoration(
                    color: AppColors.lightGrey,
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(color: AppColors.lightGrey100, width: 1),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0 * scale),
                        child: CircleAvatar(
                          radius: avatarRadius,
                          backgroundImage: AssetImage(professionals[index]),
                        ),
                      ),
                      SizedBox(height: 8 * scale),
                      Text(
                        'Christine',
                        style: Styles.tsGrey800Regular16,
                        textScaleFactor: 1.0,
                      ),
                      SizedBox(height: 4 * scale),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset('assets/images/ratings.svg'),
                          SizedBox(width: spacing),
                          Text(
                            '5.0',
                            style: Styles.tsDarkGrey800Regular14,
                            textScaleFactor: 1.0,
                          ),
                        ],
                      ),
                      SizedBox(height: 4 * scale),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

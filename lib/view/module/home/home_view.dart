import 'package:flutter/material.dart';
import 'package:flutter_bloc_starter/utils/theme/app_colors.dart';
import 'package:flutter_bloc_starter/utils/theme/styles.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      bottomNavigationBar: _buildBottomNavBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildTopBar(context),
              const SizedBox(height: 16),
              _buildLocationRow(),
              const SizedBox(height: 24),
              _buildServicesGrid(),
              const SizedBox(height: 24),
              _buildPromoBanner(),
              const SizedBox(height: 24),
              _buildLastBookingCard(),
              const SizedBox(height: 24),
              _buildTrustedProfessionals(),
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
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {},
          ),
          SvgPicture.asset(
            'assets/images/logo.svg',
            height: 40,
          ),
          CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage('assets/images/person4.jpeg',),
          ),
        ],
      ),
    );
  }

  Widget _buildLocationRow() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        children: [
          Icon(Icons.location_on_outlined, color: AppColors.grey500, size: 15,),
          const SizedBox(width: 4),
          Expanded(
            child: Text(
                'Dubai, Damac Hills - Carson 2307 + 912YT6',
                style: Styles.tsGrey600Regular12
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildServicesGrid() {
    final services = [
      {'icon': 'assets/images/house_cleaning.png', 'label': 'Home Cleaning'},
      {'icon': 'assets/images/birds.png', 'label': 'Birds & Pigeon'},
      {'icon': 'assets/images/laundry.png', 'label': 'Dry & Laundry'},
      {'icon': 'assets/images/mover_packer.png', 'label': 'Movers & Packers'},
      {'icon': 'assets/images/gardening.png', 'label': 'Gardening'},
      {'icon': 'assets/images/auto_care.png', 'label': "Auto Care"},
      {'icon': 'assets/images/home_maintenance.png', 'label': 'Home Maintenance Maintenance'},
      {'icon': 'assets/images/pet_grooming.png', 'label': 'Pet Grooming'},

    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          mainAxisSpacing: 9,
          crossAxisSpacing: 9,
          childAspectRatio: 0.8,
        ),
        itemCount: services.length,
        itemBuilder: (context, index) {
          final item = services[index];
          return Container(
            padding: EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: AppColors.lightGrey,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  item['icon']!,
                  height: 50,
                  width: 50,
                ),
                const SizedBox(height: 6),
                Text(
                  item['label']!,
                  textAlign: TextAlign.center,
                  style: Styles.tsGrey600Regular11,
                  overflow: TextOverflow.fade,
                  maxLines: 2,
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
      child: Container(
        height: 183,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.deepPurple.shade50,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Image.asset("assets/images/banner.png", fit: BoxFit.cover,)
      ),
    );
  }

  Widget _buildLastBookingCard() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
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
          Text("Quick access to your previous service.",
              style: Styles.tsLightGrey2Regular12),
          const SizedBox(height: 20),
          
          Container(
            padding: const EdgeInsets.all(14),
            decoration: BoxDecoration(
                color: AppColors.white,
              borderRadius: BorderRadius.circular(12),
                border: Border.all(color: AppColors.border, width: 1,)
            ),
            child: Row(
              children: [
                Container(
                    padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: AppColors.lightPurpleColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                    child: SvgPicture.asset("assets/images/star.svg")
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Home Cleaning - 3 Hours',
                          style: Styles.tsBlack900Regular14
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Jessy A • 12 April, 2025 at 12:00 PM',
                        style: Styles.tsLightGrey600Regular12,
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

  Widget _buildTrustedProfessionals() {
    final professionals = [
      'assets/images/person.jpeg',
      'assets/images/person2.jpeg',
      'assets/images/person3.jpeg',
      'assets/images/person4.jpeg',

    ];


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
          ),
          Text("Check our trusted by hundreds of happy homes.",
              style: Styles.tsLightGrey2Regular12),
          const SizedBox(height: 20),
          SizedBox(
            height: 225,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: professionals.length,
              separatorBuilder: (_, __) => const SizedBox(width: 16),
              itemBuilder: (context, index) {
                return Container(
                  width: 139,
                  decoration: BoxDecoration(
                      color: AppColors.lightGrey,
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(
                          color: AppColors.lightGrey100, width: 1)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          radius: 63,
                          backgroundImage: AssetImage(
                              professionals[index]),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Christine',
                        style: Styles.tsGrey800Regular16,
                      ),
                      const SizedBox(height: 4),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SvgPicture.asset('assets/images/ratings.svg'),
                          SizedBox(width: 4),
                          Text(
                            '5.0',
                            style: Styles.tsDarkGrey800Regular14,
                          ),
                        ],
                      ),

                      const SizedBox(height: 4),
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

  BottomNavigationBar _buildBottomNavBar() {
    return BottomNavigationBar(
      currentIndex: 0,
      backgroundColor: AppColors.white,
      selectedItemColor: AppColors.primaryColor,
      selectedLabelStyle: Styles.tsPurpleRegular14,
      unselectedLabelStyle: Styles.tsGrey400Regular12,
      unselectedItemColor: Colors.grey,
      items: [
        BottomNavigationBarItem(
          icon: Container(
            decoration: BoxDecoration(
                color: AppColors.purple50,
                borderRadius: BorderRadius.circular(16)
            ),
            child: SvgPicture.asset("assets/images/home.svg"),
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Container(
            decoration: BoxDecoration(
                color: AppColors.purple50,
                borderRadius: BorderRadius.circular(16)
            ),
            child: SvgPicture.asset("assets/images/booking.svg"),
          ),
          label: 'Bookings',
        ),
        BottomNavigationBarItem(
          icon: Container(
            decoration: BoxDecoration(
                color: AppColors.purple50,
                borderRadius: BorderRadius.circular(16)
            ),
            child: SvgPicture.asset("assets/images/wallet.svg"),
          ),
          label: 'Wallet',
        ),
      ],
    );
  }
}
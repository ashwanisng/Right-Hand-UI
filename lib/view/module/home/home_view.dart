import 'package:flutter/material.dart';
import 'package:flutter_bloc_starter/utils/theme/app_colors.dart';
import 'package:flutter_bloc_starter/utils/theme/styles.dart';
import 'package:flutter_bloc_starter/view/module/booking/booking_view.dart';
import 'package:flutter_bloc_starter/view/module/home/home_tab.dart';
import 'package:flutter_bloc_starter/view/module/wallet/wallet_view.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  int _selectedIndex = 0;

  final List<Widget> _pages = [
    HomeTab(),
    BookingView(),
    WalletView(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      bottomNavigationBar: _buildBottomNavBar(),
      body: _pages[_selectedIndex],);
  }


  BottomNavigationBar _buildBottomNavBar() {
    return BottomNavigationBar(
      currentIndex: _selectedIndex,
      onTap: (index) {
        setState(() {
          _selectedIndex = index;
        });
      },
      backgroundColor: AppColors.white,
      selectedItemColor: AppColors.primaryColor,
      selectedLabelStyle: Styles.tsPurpleRegular14.copyWith(fontSize: 12),
      unselectedLabelStyle: Styles.tsGrey400Regular12,
      unselectedIconTheme: IconThemeData(
        color: AppColors.lightGrey400,
      ),
      unselectedItemColor: AppColors.lightGrey400,
      items: [
        BottomNavigationBarItem(
          icon: _buildNavIcon("assets/images/home.svg", 0),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: _buildNavIcon("assets/images/booking.svg", 1),
          label: 'Bookings',
        ),
        BottomNavigationBarItem(
          icon: _buildNavIcon("assets/images/wallet.svg", 2),
          label: 'Wallet',
        ),
      ],
    );
  }

  Widget _buildNavIcon(String assetPath, int index) {
    final bool isSelected = index == _selectedIndex;
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: 10, vertical: isSelected ? 6 : 0),

      decoration: isSelected
          ? BoxDecoration(
        color: AppColors.purple50,
        borderRadius: BorderRadius.circular(16),
      )
          : null,
      child: SvgPicture.asset(
        assetPath,
        color: isSelected ? AppColors.purple : null,
      ),
    );
  }
}
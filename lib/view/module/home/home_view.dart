import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_bloc_starter/utils/theme/app_colors.dart';
import 'package:flutter_bloc_starter/utils/theme/styles.dart';

class HomeDashboardView extends StatefulWidget {
  const HomeDashboardView({super.key});

  @override
  _HomeDashboardViewState createState() => _HomeDashboardViewState();
}

class _HomeDashboardViewState extends State<HomeDashboardView> {
  int _navIndex = 0;

  final List<Map<String, String>> _categories = [
    { 'icon': 'assets/icons/home_cleaning.svg', 'label': 'Home Cleaning' },
    { 'icon': 'assets/icons/birds_pigeon.svg', 'label': 'Birds & Pigeon' },
    { 'icon': 'assets/icons/dry_laundry.svg', 'label': 'Dry & Laundry' },
    { 'icon': 'assets/icons/movers_packers.svg', 'label': 'Movers & Packers' },
    { 'icon': 'assets/icons/gardening.svg', 'label': 'Gardening' },
    { 'icon': 'assets/icons/auto_care.svg', 'label': 'Auto Care' },
    { 'icon': 'assets/icons/home_maintenance.svg', 'label': 'Home Maintenance' },
    { 'icon': 'assets/icons/pet_grooming.svg', 'label': 'Pet Grooming' },
  ];

  final List<Map<String, String>> _professionals = [
    { 'image': 'https://via.placeholder.com/100', 'name': 'Christine' },
    { 'image': 'https://via.placeholder.com/100', 'name': 'Michael' },
    { 'image': 'https://via.placeholder.com/100', 'name': 'Sophie' },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text('Home')));
  }
}

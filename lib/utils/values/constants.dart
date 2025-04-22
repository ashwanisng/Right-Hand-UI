import 'package:flutter/material.dart';
import 'package:flutter_bloc_starter/view/module/booking/booking_view.dart';
import 'package:flutter_bloc_starter/view/module/home/home_view.dart';
import 'package:flutter_bloc_starter/view/module/wallet/wallet_view.dart';

class Timeouts {
  Timeouts._privateConstructor();

  static const CONNECT_TIMEOUT = 20000;
  static const RECEIVE_TIMEOUT = 20000;
}

class GlobalKeys {
  GlobalKeys._privateConstructor();

  static final navigationKey = GlobalKey<NavigatorState>();
}

class Constants {
  Constants._privateConstructor();

  static const key = "7d411dafbbbf0b99f4bf887088eb0f7e";

  
}

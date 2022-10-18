import 'package:delivery_food/models/models.dart';
import 'package:delivery_food/screens/basket/basket_screen.dart';
import 'package:delivery_food/screens/checkout/checkout_screen.dart';
import 'package:delivery_food/screens/delivery_time/delevery_time_screen.dart';
import 'package:delivery_food/screens/filter/filter_screen.dart';
import 'package:delivery_food/screens/home/home_screen.dart';
import 'package:delivery_food/screens/location/location_screen.dart';
import 'package:delivery_food/screens/restaurant_details/restaurant_details_screen.dart';
import 'package:delivery_food/screens/restaurant_listing/restaurant_listing_screen.dart';
import 'package:delivery_food/screens/voucher/voucher_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    print('The Route is: ${settings.name}');

    switch (settings.name) {
      case '/':
        return HomeScreen.route();
      case HomeScreen.routeName:
        return HomeScreen.route();
      case LocationScreen.routeName:
        return LocationScreen.route();
      case BasketScreen.routeName:
        return BasketScreen.route();
      case CheckoutScreen.routeName:
        return CheckoutScreen.route();
      case DeliveryTimeScreen.routeName:
        return DeliveryTimeScreen.route();
      case FilterScreen.routeName:
        return FilterScreen.route();
      case RestaurantDetailsScreen.routeName:
        return RestaurantDetailsScreen.route(
          restaurent : settings.arguments as Restaurent
        );
      case RestaurantListingScreen.routeName:
        return RestaurantListingScreen.route();
      case VoucherScreen.routeName:
        return VoucherScreen.route();
        break;
      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(appBar: AppBar(title: Text('error'))),
      settings: RouteSettings(name: '/error'),
    );
  }
}
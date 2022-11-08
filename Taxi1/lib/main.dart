/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:taxibookflutter/pages/add-card.dart';
import 'package:taxibookflutter/pages/book-detail.dart';
import 'package:taxibookflutter/pages/book-later.dart';
import 'package:taxibookflutter/pages/cancel-request.dart';
import 'package:taxibookflutter/pages/complaint.dart';
import 'package:taxibookflutter/pages/delete-favourite.dart';
import 'package:taxibookflutter/pages/driver-detail.dart';
import 'package:taxibookflutter/pages/email.dart';
import 'package:taxibookflutter/pages/emergency-contacts.dart';
import 'package:taxibookflutter/pages/fare-detail.dart';
import 'package:taxibookflutter/pages/locations.dart';
import 'package:taxibookflutter/pages/mobile.dart';
import 'package:taxibookflutter/pages/my-location.dart';
import 'package:taxibookflutter/pages/my-trips.dart';
import 'package:taxibookflutter/pages/news-offers.dart';
import 'package:taxibookflutter/pages/password.dart';
import 'package:taxibookflutter/pages/payment-method.dart';
import 'package:taxibookflutter/pages/profile.dart';
import 'package:taxibookflutter/pages/promo-code.dart';
import 'package:taxibookflutter/pages/rate-card.dart';
import 'package:taxibookflutter/pages/search-location.dart';
import 'package:taxibookflutter/pages/social-connect.dart';
import 'package:taxibookflutter/pages/trip-detail.dart';
import 'package:taxibookflutter/pages/verifications.dart';
import 'package:taxibookflutter/pages/welcome.dart';
import './helper/style.dart' as style;

void main() {
    runApp(const MyApp());
}

class MyApp extends StatelessWidget {
    const MyApp({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            title: 'Taxi Booking 1',
            theme: ThemeData(
                primaryColor: style.appColor,
                fontFamily: 'regular'
            ),
            home: WelcomePage(),
            routes: {
              AddCardPage.page_id: (context) => AddCardPage(),
              BookDetailPage.page_id: (context) => BookDetailPage(),
              BookLaterPage.page_id: (context) => BookLaterPage(),
              CancelRequestPage.page_id: (context) => CancelRequestPage(),
              ComplaintPage.page_id: (context) => ComplaintPage(),
              DeleteFavouritePage.page_id: (context) => DeleteFavouritePage(),
              DriverDetailPage.page_id: (context) => DriverDetailPage(),
              EmailPage.page_id: (context) => EmailPage(),
              EmergencyContactsPage.page_id: (context) => EmergencyContactsPage(),
              FairDetailPage.page_id: (context) => FairDetailPage(),
              LocationsPage.page_id: (context) => LocationsPage(),
              MobilePage.page_id: (context) => MobilePage(),
              MyLocationPage.page_id: (context) => MyLocationPage(),
              MyTripsPage.page_id: (context) => MyTripsPage(),
              NewsOffersPage.page_id: (context) => NewsOffersPage(),
              PasswordPage.page_id: (context) => PasswordPage(),
              PaymentMethodPage.page_id: (context) => PaymentMethodPage(),
              ProfilePage.page_id: (context) => ProfilePage(),
              PromoCodePage.page_id: (context) => PromoCodePage(),
              RateCardPage.page_id: (context) => RateCardPage(),
              SearchLocationPage.page_id: (context) => SearchLocationPage(),
              SocialConnectPage.page_id: (context) => SocialConnectPage(),
              TripDetailPage.page_id: (context) => TripDetailPage(),
              VerificationPage.page_id: (context) => VerificationPage(),
              WelcomePage.page_id: (context) => WelcomePage(),
            },
        );
    }

}

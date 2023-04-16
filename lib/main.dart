import 'package:builtop_customer_app/constants/theme.dart';
import 'package:builtop_customer_app/modules/home/home.page.dart';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:mahg_essential_package/mahg_essential_package.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ConfigService.init();
  BeamerService.routesEx = {
    '/': (context, state, data) {
      return BeamerService.beamPageEx(
        key: const ValueKey('home'),
        title: 'Builtop',
        child: const HomePage(),
      );
    },

    //   '/profile/addressess/edit/:id': (context, state, data) {
    //   final controller = (data != null)
    //       ? ((data as Map<String, dynamic>)['controller'] != null)
    //           ? (data['controller'] as AddressController?)
    //           : null
    //       : null;
    //   return BeamerService.beamPageEx(
    //     key: ValueKey('edit address'),
    //     title: 'Kafarat Plus',
    //     child: AddAddressPage(
    //         id: state.pathParameters['id'], controller: controller),
    //   );
    // },
  };
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerDelegate: BeamerService.routerDelegate,
      routeInformationParser: BeamerService.getBeamerParser,
      backButtonDispatcher: BeamerService.getBeamerBackButtonDispatcher,
      theme: ThemeClass.themeData(context),
      scrollBehavior: const MaterialScrollBehavior().copyWith(
        dragDevices: {
          PointerDeviceKind.mouse,
          PointerDeviceKind.touch,
          PointerDeviceKind.stylus,
          PointerDeviceKind.trackpad,
          PointerDeviceKind.unknown
        },
      ),
      title: 'Builtop Customer',
    );
  }
}

import 'package:builtop_customer_app/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:mahg_essential_package/mahg_essential_package.dart';

import 'home.controller.dart';

class HomePage extends MahgStatefulWidget<HomeController> {
  const HomePage({HomeController? controllerEx, Key? key})
      : super(controllerEx, key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends MahgState<HomePage, HomeController> {
  @override
  createController() {
    return HomeController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Test'),
      ),
      body: Column(
        children: [
          Card(
            child: Text('test Card'),
          ),
          AppButton(
            title: 'test',
            onPressed: () {},
            buttonColor: ColorConst.primary,
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:shop_app/screens/home/home_screen.dart';

import '../../components/default_button.dart';
import '../../constants.dart';
import '../../size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Column(
        children: [
          Spacer(),
          Text(
            'eShop',
            style: TextStyle(
                fontSize: getProportionateScreenWidth(36),
                color: kPrimaryColor,
                fontWeight: FontWeight.bold),
          ),
          Text('Giris Ugurlu', textAlign: TextAlign.center),
          Spacer(flex: 1),
          Image.asset(
            'assets/images/success.png',
            height: getProportionateScreenHeight(265),
            width: getProportionateScreenWidth(235),
          ),
          Spacer(flex: 1),
          DefaultButton(
              press: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                );
              },
              text: 'Ana Sehife'
          ),
          Spacer(flex: 2),
        ],
      ),

    );
  }
}

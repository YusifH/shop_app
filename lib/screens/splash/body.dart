import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/size_config.dart';

import '../../components/default_button.dart';
import '../sign_in/sign_in_screen.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>>  splashData = [
    {
      "text": "eShop-a xoş gelmisiniz, Başlayaq?",
      "image": "assets/images/splash_1.png"
    },
    {
      "text": "Axtardığınız her şey eShop-da",
      "image": "assets/images/splash_2.png"
    },
    {
      "text": "Yüzlerle brend mağazalar. \nBir Toxunuş qeder yaxın.",
      "image": "assets/images/splash_3.png"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value){
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(
                  text: splashData[index]["text"] ?? '',
                  img: splashData[index]["image"] ?? '',
                ),
              )),
          Spacer(flex: 1,),
          Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                            children: List.generate(splashData.length, (index) => buildDot(index: index))
                        )
                      ],
                    ),
                    Spacer(flex: 3,),
                    DefaultButton(
                        press: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const SignInScreen()),
                          );
                        },
                        text: 'Davam Et'),
                    Spacer()
                  ],
                ),
              )
          )
        ],
      ),
    ));
  }

  AnimatedContainer buildDot({required int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
                  width: currentPage == index ? 20 :6,
                  height: 6,
                  decoration: BoxDecoration(
                    color: currentPage == index ? kPrimaryColor : Color(0xFFD8D8D8D),
                    borderRadius: BorderRadius.circular(5)
                  ),
                );
  }
}


class SplashContent extends StatelessWidget {
  const SplashContent({
    Key? key,
    required this.text,
    required this.img,
  }) : super(key: key);
  final String text, img;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Text(
          'eShop',
          style: TextStyle(
              fontSize: getProportionateScreenWidth(36),
              color: kPrimaryColor,
              fontWeight: FontWeight.bold),
        ),
        Text(text, textAlign: TextAlign.center),
        Spacer(flex: 2),
        Image.asset(
          img,
          height: getProportionateScreenHeight(265),
          width: getProportionateScreenWidth(235),
        )
      ],
    );
  }
}

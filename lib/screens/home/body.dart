import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/size_config.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: getProportionateScreenWidth(20),),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: SizeConfig.screenWidth*0.6,
                    decoration: BoxDecoration(
                      color: kSecondaryColor.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        hintText: 'Axtar',
                        prefixIcon: Icon(Icons.search, color: kSecondaryColor.withOpacity(0.5),),
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: getProportionateScreenWidth(20),
                          vertical: getProportionateScreenWidth(9),
                        )
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){},
                    borderRadius: BorderRadius.circular(50),
                    child: Container(
                      padding: EdgeInsets.all(getProportionateScreenWidth(12)),
                      width: getProportionateScreenWidth(46),
                      height: getProportionateScreenWidth(46),
                      decoration: BoxDecoration(
                          color: kSecondaryColor.withOpacity(0.1),
                          shape: BoxShape.circle
                      ),
                      child: SvgPicture.asset('assets/icons/Cart Icon.svg'),
                    ),
                  ),
                  InkWell(
                    onTap: (){},
                    borderRadius: BorderRadius.circular(50),
                    child: Stack(
                      overflow: Overflow.visible,
                      children: [
                        Container(
                          padding: EdgeInsets.all(getProportionateScreenWidth(12)),
                          width: getProportionateScreenWidth(46),
                          height: getProportionateScreenWidth(46),
                          decoration: BoxDecoration(
                              color: kSecondaryColor.withOpacity(0.1),
                              shape: BoxShape.circle
                          ),
                          child: SvgPicture.asset('assets/icons/Bell.svg'),
                        ),
                        Positioned(
                            top: -3,
                            right: 0,
                            child: Container(
                              width: getProportionateScreenWidth(16),
                              height: getProportionateScreenWidth(16),
                              decoration: BoxDecoration(
                                  color: Color(0xFFFF4848),
                                  shape: BoxShape.circle
                              ),
                              child: Center(
                                child: Text('3', style: TextStyle(
                                    fontSize: getProportionateScreenWidth(10),
                                    color: Colors.white,
                                    height: 1,
                                    fontWeight: FontWeight.w600
                                ),),
                              ),
                            )
                        )
                      ],
                    ),
                  ),
                ],
              ),
              ),
              SizedBox(height: getProportionateScreenWidth(20),),
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)
                ),
                width: double.infinity,
                height: 90,
                decoration: BoxDecoration(
                    color: Color(0xFF4A3290),
                    borderRadius: BorderRadius.circular(20)
                ),
              )
            ],
          ),
        )
    );
  }
}

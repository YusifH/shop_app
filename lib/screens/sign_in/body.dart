import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/screens/home/home_screen.dart';
import 'package:shop_app/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20),),
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                Text("Xoş Gelmisiniz", style: TextStyle(fontSize: getProportionateScreenWidth(28), fontWeight: FontWeight.bold),),
                Text('Email ve ya sosial mediya hesabinizla \n daxil olun',
                  textAlign: TextAlign.center,
                ),
                SignInForm()
              ],
            ),
          ),
        )
    );
  }
}

class SignInForm extends StatefulWidget {
   SignInForm({Key? key}) : super(key: key);


  @override
  _SignInFormState createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  bool remember = false;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
        child: Column(
          children: [
            TextFormField(
              // validator: (value) {
              //   if(value!.isEmpty){
              //     setState(() {
              //         errors.add('Email daxil edin');
              //     });
              //   }
              //   return null;
              // },
              // decoration: TextDecoration.underline
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'Email',
                hintText: 'Email daxil edin',
                floatingLabelBehavior: FloatingLabelBehavior.always,
                suffixIcon: Padding(padding: EdgeInsets.fromLTRB(0,
                    getProportionateScreenWidth(20),
                    getProportionateScreenWidth(20),
                    getProportionateScreenWidth(20)),
                    child: SvgPicture.asset('assets/icons/Mail.svg', height: getProportionateScreenWidth(18),),
                ),
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 25,
                  vertical: 20
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(28),
                  borderSide: BorderSide(color: kTextColor),
                  gapPadding: 10
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(28),
                    borderSide: BorderSide(color: kTextColor),
                    gapPadding: 10
                ),
              ),
            ),
            SizedBox(height: getProportionateScreenHeight(20),),
            TextFormField(
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Parol',
                hintText: 'Parol daxil edin',
                floatingLabelBehavior: FloatingLabelBehavior.always,
                suffixIcon: Padding(padding: EdgeInsets.fromLTRB(0,
                    getProportionateScreenWidth(20),
                    getProportionateScreenWidth(20),
                    getProportionateScreenWidth(20)),
                    child: SvgPicture.asset('assets/icons/Lock.svg', height: getProportionateScreenWidth(18),),
                ),
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 25,
                  vertical: 20
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(28),
                  borderSide: BorderSide(color: kTextColor),
                  gapPadding: 10
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(28),
                    borderSide: BorderSide(color: kTextColor),
                    gapPadding: 10
                ),
              ),
            ),
            SizedBox(height: getProportionateScreenHeight(20),),
            // Row(
            //   children: [
            //     SvgPicture.asset('assets/icons/Error.svg', height: getProportionateScreenWidth(14),width: getProportionateScreenWidth(14),),
            //     Text(errors[0])
            //   ],
            // ),
            Row(
              children: [
                Checkbox(value: remember, activeColor: kPrimaryColor, onChanged: (value){
                  setState(() {
                    remember = value!;
                  });
                }),
                Text('Yadda saxla'),
                Spacer(),
                Text('Parolu unutmusuz?', style: TextStyle(decoration: TextDecoration.underline),)
              ],
            ),
            DefaultButton(press: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomeScreen()),
              );
            }, text: 'Daxil ol',)
          ],
    ));
  }
}

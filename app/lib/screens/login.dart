import 'package:app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  void login() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appPrimaryColor,
      body: SafeArea(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 100.0),
                child: SvgPicture.asset('images/logo.svg'),
              ),
              Positioned(
                bottom: 50,
                child: Material(
                  color: appAccentColor,
                  borderRadius: BorderRadius.circular(7.0),
                  child: InkWell(
                    onTap: login,
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 25.0),
                      width: MediaQuery.of(context).size.width - 100,
                      child: const Center(
                        child: Text(
                          'Login',
                          style: TextStyle(
                            color: appPrimaryColor,
                            fontSize: 22.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

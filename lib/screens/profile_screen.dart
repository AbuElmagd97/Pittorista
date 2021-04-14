import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pittorista/constants/constant.dart';
import 'package:pittorista/services/auth.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatelessWidget {
  static const String routeName = '/ProfileScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: _buildAppBar(context)),
    );
  }

  Widget _buildAppBar(BuildContext context) {
    final auth = Provider.of<AuthBase>(context, listen: false);
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            width: width * 0.7,
            child: Text(
              'My Profile',
              style: textStyle1.copyWith(
                  fontSize: 35, color: color5, fontWeight: FontWeight.bold),
            ),
          ),
          Stack(
            children: [
              GestureDetector(
                onTap: auth.signOut,
                child: SvgPicture.asset(
                  'assets/icons/sign-out.svg',
                  color: color5,
                  width: 30,
                  height: 30,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

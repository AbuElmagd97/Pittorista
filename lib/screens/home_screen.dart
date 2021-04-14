import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pittorista/constants/constant.dart';
import 'package:pittorista/screens/profile_screen.dart';
import 'gallery_screen.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = '/HomeScreen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _index = 0;

  void onTap(index) {
    setState(() {
      _index = index;
    });
  }

  List<Widget> _widgetList = [
    // AddNew(),
    GalleryScreen(),
    GalleryScreen(),
    GalleryScreen(),
    ProfileScreen(),
    // GalleryScreen(),
    // Search(),
    // Cart(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetList[_index],
      bottomNavigationBar: _buildBottomBar(context, _index),
      floatingActionButton: _buildFAB(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Widget _buildBottomBar(BuildContext context, int index) {
    var height = MediaQuery.of(context).size.height;
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      notchMargin: 5.0,
      child: SizedBox(
        height: height * 0.08,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: SvgPicture.asset('assets/icons/home.svg',
                    color: _index == 0 ? color1 : color5),
                onPressed: () => onTap(0),
              ),
              IconButton(
                icon: SvgPicture.asset('assets/icons/search.svg',
                    color: _index == 1 ? color1 : color5),
                onPressed: () => onTap(1),
              ),
              IconButton(
                icon: SvgPicture.asset('assets/icons/cart.svg',
                    color: _index == 2 ? color1 : color5),
                onPressed: () => onTap(2),
              ),
              IconButton(
                icon: SvgPicture.asset('assets/icons/user.svg',
                    color: _index == 3 ? color1 : color5),
                onPressed: () => onTap(3),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFAB() {
    return FloatingActionButton(
      backgroundColor: color1,
      child: SvgPicture.asset(
        'assets/icons/add.svg',
        color: color5,
      ),
      onPressed: () {
        //TODO: Add Post Screen
      },
    );
  }
}

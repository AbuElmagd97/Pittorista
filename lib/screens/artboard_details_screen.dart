import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:page_indicator/page_indicator.dart';
import 'package:pittorista/constants/constant.dart';
import 'package:pittorista/models/art_board.dart';
import 'package:pittorista/widgets/custom_raised_button.dart';

class ArtBoardDetails extends StatelessWidget {
  static const String routeName = '/ArtBoardDetails';

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    final ArtBoard artBoard = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              width: width,
              height: height,
              child: PageIndicatorContainer(
                length: 3,
                indicatorColor: Colors.grey,
                indicatorSelectorColor: Colors.white,
                align: IndicatorAlign.center,
                child: PageView(
                  children: [
                    Image.network(
                      artBoard.artBoardImages[0].src,
                      fit: BoxFit.cover,
                    ),
                    Image.network(
                      artBoard.artBoardImages[1].src,
                      fit: BoxFit.cover,
                    ),
                    Image.network(
                      artBoard.artBoardImages[2].src,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              right: 15,
              top: 15,
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: SvgPicture.asset(
                    'assets/icons/close.svg',
                    color: color5,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 15,
              top: 15,
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    'assets/icons/cart_add.svg',
                    color: color5,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0.0,
              child: Container(
                width: width,
                height: height * 0.3,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15.0),
                    topRight: Radius.circular(15.0),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 10.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            artBoard.artBoardName,
                            style: TextStyle(
                                color: color5,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            artBoard.artBoardPrice,
                            style: TextStyle(
                                color: color5,
                                fontSize: 28.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      ListTile(
                        leading: CircleAvatar(
                          radius: 20.0,
                          child: ClipOval(
                            child: Image.network(artBoard.artistAvatar),
                          ),
                          // backgroundColor: Colors.transparent,
                          // backgroundImage: NetworkImage(artist.artistAvatar),
                        ),
                        title: Text(
                          artBoard.artistName,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Wrap(
                        children: [
                          Text(
                            artBoard.artBoardDescription,
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                            overflow: TextOverflow.clip,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      CustomRaisedButton(
                        color: color1,
                        child: Text(
                          'ORDER NOW',
                          style: TextStyle(color: color2, fontSize: 18.0),
                        ),
                        width: width,
                        height: height * 0.05,
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

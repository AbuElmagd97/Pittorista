import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:pittorista/constants/constant.dart';
import 'package:pittorista/models/art_board.dart';
import 'artboard_details_screen.dart';

class GalleryScreen extends StatefulWidget {
  static const String routeName = '/GalleryScreen';

  @override
  _GalleryScreenState createState() => _GalleryScreenState();
}

class _GalleryScreenState extends State<GalleryScreen> {
  List<bool> _selected = [
    true,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildContent(context),
    );
  }

  Widget _buildAppBar(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            width: width * 0.7,
            child: Text(
              'What painting style are\nyou looking for?',
              style: textStyle1.copyWith(
                  fontSize: 35, color: color5, fontWeight: FontWeight.bold),
            ),
          ),
          Stack(
            children: [
              SvgPicture.asset(
                'assets/icons/bell.svg',
                color: color5,
                width: 30,
                height: 30,
              ),
              Positioned(
                top: 0,
                right: 0,
                child: Container(
                  alignment: Alignment.center,
                  width: 15,
                  height: 15,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                  child: Text(
                    '1',
                    style: TextStyle(color: color3),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryChips(int index, String label, Color color) {
    return FilterChip(
      selected: _selected[index],
      onSelected: (bool selected) {
        setState(() {
          _selected[index] = selected;
        });
      },
      labelPadding: EdgeInsets.all(2.0),
      avatar: CircleAvatar(
        backgroundColor: Colors.white70,
        child: Text(label[0].toUpperCase()),
      ),
      label: Text(
        label,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      backgroundColor: _selected[index] ? color1 : color5,
      elevation: 6.0,
      shadowColor: Colors.grey[60],
      showCheckmark: false,
      selectedColor: color1,
      padding: EdgeInsets.all(8.0),
    );
  }

  Widget _chipList(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Container(
      height: height * 0.06,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Wrap(
            spacing: 6.0,
            runSpacing: 6.0,
            children: [
              _buildCategoryChips(0, 'All', color5),
              _buildCategoryChips(1, 'Abstract Art', color5),
              _buildCategoryChips(2, 'Conceptual Art', color5),
              _buildCategoryChips(3, 'Modernism Art', color5),
              _buildCategoryChips(4, 'Impressionism Art', color5),
              _buildCategoryChips(5, 'Expressionism Art', color5),
              _buildCategoryChips(6, 'Cubism Art', color5),
              _buildCategoryChips(7, 'Surrealism Art', color5),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildArtBoardList(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    List<ArtBoard> artBoards = [
      ArtBoard(
          artBoardName: 'Inner Calm',
          artBoardPrice: '100\$',
          artBoardImages: [
            Images(
                src:
                    'https://images.unsplash.com/photo-1579783902614-a3fb3927b6a5?ixid=MXwxMjA3fDB8MHxzZWFyY2h8M3x8YXJ0fGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
            Images(
                src:
                    'https://images.unsplash.com/photo-1579783902614-a3fb3927b6a5?ixid=MXwxMjA3fDB8MHxzZWFyY2h8M3x8YXJ0fGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
            Images(
                src:
                    'https://images.unsplash.com/photo-1579783902614-a3fb3927b6a5?ixid=MXwxMjA3fDB8MHxzZWFyY2h8M3x8YXJ0fGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
          ],
          artistName: 'Sarah Jack',
          artistAvatar:
              'https://www.assyst.de/cms/upload/sub/digitalisierung/18-F.jpg',
          artBoardDescription:
              'Inner Calm - 80*80 Cm, 1/10, Limited Print on Epson Fine art paper.'),
      ArtBoard(
          artBoardName: 'Colourful',
          artBoardPrice: '150\$',
          artBoardImages: [
            Images(
                src:
                    'https://images.unsplash.com/photo-1533158326339-7f3cf2404354?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8YWJzdHJhY3QlMjBhcnR8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
            Images(
                src:
                    'https://images.unsplash.com/photo-1533158326339-7f3cf2404354?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8YWJzdHJhY3QlMjBhcnR8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
            Images(
                src:
                    'https://images.unsplash.com/photo-1533158326339-7f3cf2404354?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8YWJzdHJhY3QlMjBhcnR8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
          ],
          artistName: 'Leonardo Peters',
          artistAvatar:
              'https://www.assyst.de/cms/upload/sub/digitalisierung/15-M.jpg',
          artBoardDescription:
              'Inner Calm - 80*80 Cm, 1/10, Limited Print on Epson Fine art paper.'),
      ArtBoard(
          artBoardName: 'Quajar Route',
          artBoardPrice: '500\$',
          artBoardImages: [
            Images(
                src:
                    'https://images.unsplash.com/photo-1516238840914-94dfc0c873ae?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8Y29uY2VwdHVhbCUyMGFydCUyMHBhaW50fGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
            Images(
                src:
                    'https://images.unsplash.com/photo-1516238840914-94dfc0c873ae?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8Y29uY2VwdHVhbCUyMGFydCUyMHBhaW50fGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
            Images(
                src:
                    'https://images.unsplash.com/photo-1516238840914-94dfc0c873ae?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8Y29uY2VwdHVhbCUyMGFydCUyMHBhaW50fGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
          ],
          artistName: 'Chris Gill',
          artistAvatar:
              'http://notjust.coldsmoke.co/wp-content/uploads/2020/04/big_1513284733-avatar-chrisfgill.jpg',
          artBoardDescription:
              'Inner Calm - 80*80 Cm, 1/10, Limited Print on Epson Fine art paper.'),
      ArtBoard(
          artBoardName: 'OverSeas Happiness',
          artBoardPrice: '300\$',
          artBoardImages: [
            Images(
                src:
                    'https://images.unsplash.com/photo-1610926950565-29e4728c070b?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8bW9kZXJuaXNtJTIwYXJ0fGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
            Images(
                src:
                    'https://images.unsplash.com/photo-1610926950565-29e4728c070b?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8bW9kZXJuaXNtJTIwYXJ0fGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
            Images(
                src:
                    'https://images.unsplash.com/photo-1610926950565-29e4728c070b?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8bW9kZXJuaXNtJTIwYXJ0fGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
          ],
          artistName: 'Joe Emison',
          artistAvatar:
              'http://thenewstack.io/wp-content/uploads/2016/11/Joe-Emison_avatar_1479739811.png',
          artBoardDescription:
              'Inner Calm - 80*80 Cm, 1/10, Limited Print on Epson Fine art paper.'),
      ArtBoard(
          artBoardName: 'Outer Sadness',
          artBoardPrice: '270\$',
          artBoardImages: [
            Images(
                src:
                    'https://images.unsplash.com/photo-1579168730073-4541e40ca43a?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8c2FkbmVzcyUyMHBhaW50aW5nfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
            Images(
                src:
                    'https://images.unsplash.com/photo-1579168730073-4541e40ca43a?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8c2FkbmVzcyUyMHBhaW50aW5nfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
            Images(
                src:
                    'https://images.unsplash.com/photo-1579168730073-4541e40ca43a?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8c2FkbmVzcyUyMHBhaW50aW5nfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
          ],
          artistName: 'Alaya Jason',
          artistAvatar:
              'https://www.gimpusers.com/system/php-dl/avatar_template.jpg',
          artBoardDescription:
              'Inner Calm - 80*80 Cm, 1/10, Limited Print on Epson Fine art paper.'),
      ArtBoard(
          artBoardName: 'Woman Gravity',
          artBoardPrice: '120\$',
          artBoardImages: [
            Images(
                src:
                    'https://images.unsplash.com/photo-1571115764595-644a1f56a55c?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8cGFpbnRpbmd8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
            Images(
                src:
                    'https://images.unsplash.com/photo-1571115764595-644a1f56a55c?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8cGFpbnRpbmd8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
            Images(
                src:
                    'https://images.unsplash.com/photo-1571115764595-644a1f56a55c?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8cGFpbnRpbmd8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
          ],
          artistName: 'Khaled Mohamed',
          artistAvatar:
              'https://static01.nyt.com/newsgraphics/2020/11/12/fake-people/4b806cf591a8a76adfc88d19e90c8c634345bf3d/fallbacks/mobile-07.jpg',
          artBoardDescription:
              'Inner Calm - 80*80 Cm, 1/10, Limited Print on Epson Fine art paper.'),
      ArtBoard(
          artBoardName: 'Orange and Blue',
          artBoardPrice: '800\$',
          artBoardImages: [
            Images(
                src:
                    'https://images.unsplash.com/photo-1569705474611-051bf56f332c?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTl8fHBhaW50aW5nfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
            Images(
                src:
                    'https://images.unsplash.com/photo-1569705474611-051bf56f332c?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTl8fHBhaW50aW5nfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
            Images(
                src:
                    'https://images.unsplash.com/photo-1569705474611-051bf56f332c?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTl8fHBhaW50aW5nfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
          ],
          artistName: 'Hussein Soliman',
          artistAvatar:
              'https://cake.imgix.net/m/M2zwQYXPLdv9_1550171328822.png',
          artBoardDescription:
              'Inner Calm - 80*80 Cm, 1/10, Limited Print on Epson Fine art paper.'),
      ArtBoard(
          artBoardName: 'Smiling Woman',
          artBoardPrice: '250\$',
          artBoardImages: [
            Images(
                src:
                    'https://images.unsplash.com/photo-1542226601-bc82e276ae0a?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NDF8fHBhaW50aW5nfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
            Images(
                src:
                    'https://images.unsplash.com/photo-1542226601-bc82e276ae0a?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NDF8fHBhaW50aW5nfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
            Images(
                src:
                    'https://images.unsplash.com/photo-1542226601-bc82e276ae0a?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NDF8fHBhaW50aW5nfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
          ],
          artistName: 'Nada Ali',
          artistAvatar: 'https://avatarfiles.alphacoders.com/177/177127.jpg',
          artBoardDescription:
              'Inner Calm - 80*80 Cm, 1/10, Limited Print on Epson Fine art paper.'),
    ];
    return Expanded(
      child: Container(
        padding: EdgeInsets.only(top: 20),
        width: width,
        height: height,
        child: GridView.builder(
            shrinkWrap: true,
            physics: ClampingScrollPhysics(),
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 0.7,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20),
            itemCount: artBoards.length,
            itemBuilder: (BuildContext ctx, index) {
              return Stack(
                alignment: Alignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, ArtBoardDetails.routeName,
                          arguments: artBoards[index]);
                    },
                    child: Container(
                      width: width * 0.5,
                      height: height * 0.3,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                        child: Image.network(
                          artBoards[index].artBoardImages[0].src,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 5.0,
                    child: GlassmorphicContainer(
                      width: width * 0.42,
                      height: height * 0.13,
                      borderRadius: 15,
                      blur: 3,
                      border: 0,
                      linearGradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color(0xFFffffff).withOpacity(0.5),
                            Color(0xFFFFFFFF).withOpacity(0.5),
                          ],
                          stops: [
                            0.1,
                            1,
                          ]),
                      borderGradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0xFFffffff).withOpacity(0.5),
                          Color((0xFFFFFFFF)).withOpacity(0.5),
                        ],
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                  child: Text(
                                    artBoards[index].artBoardName,
                                    style: TextStyle(fontSize: 15.0),
                                  ),
                                ),
                                Text(
                                  artBoards[index].artBoardPrice,
                                  style: TextStyle(fontSize: 18.0),
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            thickness: 1,
                            indent: 10,
                            endIndent: 10,
                          ),
                          ListTile(
                            leading: CircleAvatar(
                              radius: 20.0,
                              child: ClipOval(
                                child: Image.network(
                                    artBoards[index].artistAvatar),
                              ),
                              // backgroundColor: Colors.transparent,
                              // backgroundImage: NetworkImage(artist.artistAvatar),
                            ),
                            title: Text(artBoards[index].artistName),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            }),
      ),
    );
  }

  Widget _buildContent(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildAppBar(context),
            SizedBox(
              height: 20,
            ),
            _chipList(context),
            _buildArtBoardList(context),
          ],
        ),
      ),
    );
  }
}

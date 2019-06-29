import 'package:flutter/material.dart';
import 'package:hero_profile/screens/base/state/base_page_state.dart';

class AboutPage extends StatefulWidget {
  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends BasePageState<AboutPage> {
  final _shape = RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(13)));

  @override
  Widget build(BuildContext context) {
    double _elevation = 10;
    Color _shadowColor = Colors.grey[100];

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: ListView(
        padding: EdgeInsets.only(left: 8, right: 8, bottom: 8, top: 66),
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 4, right: 4),
            child: Material(
              elevation: _elevation,
              shadowColor: _shadowColor,
              shape: _shape,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Material(
                      type: MaterialType.card,
                      clipBehavior: Clip.antiAlias,
                      shape: CircleBorder(),
                      child: Image.network(
                        'https://scontent.fsgn5-2.fna.fbcdn.net/v/'
                        't1.0-9/26230311_1452700444852318_4211563881416746955_n.jpg?'
                        '_nc_cat=105&_nc_oc=AQmAnzc46n7nRPN6Z09HzK1zq7Dak9NodoVRn0vB6-Za2wNM31tiDTQBcQps3Nn4isaog89wsSjpnSnWyd_'
                        'REF6K&_nc_ht=scontent.fsgn5-2.fna&oh=0c00c0a3aadd8af7611c989341e89d32&oe=5D8B3D49',
                        width: 80,
                        height: 80,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        verticalDirection: VerticalDirection.down,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Tung Pham',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 4),
                            child: Text(
                              'Jan 06, 1995',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 12),
                            child: Text(
                              '\"I\'m Flutter, Android Developer. I want to have more and more experiences in mobile development\"',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10, left: 4, right: 4),
            child: Material(
              shadowColor: _shadowColor,
              elevation: _elevation,
              clipBehavior: Clip.antiAlias,
              shape: _shape,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: Row(
                        children: <Widget>[
                          Image.asset('assets/images/phone.png',
                              width: 24, height: 24),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(
                                '+84-39-495-4959',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Row(
                        children: <Widget>[
                          Image.asset('assets/images/address.png',
                              width: 24, height: 24),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(
                                '26/15 Street B3, Tay Thanh Ward. Tan Phu District, HCM City',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Image.asset('assets/images/gmail.png',
                            width: 24, height: 24),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                              'phamthanhtung1995@gmail.com',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 15, left: 4, right: 4),
            child: Material(
              shadowColor: _shadowColor,
              elevation: _elevation,
              clipBehavior: Clip.antiAlias,
              shape: _shape,
              child: InkWell(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Image.asset('assets/images/facebook.png',
                              width: 24, height: 24),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(
                                'facebook.com/tungpt.95',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 15, left: 4, right: 4),
            child: Material(
              shadowColor: _shadowColor,
              elevation: _elevation,
              clipBehavior: Clip.antiAlias,
              shape: _shape,
              child: InkWell(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Image.asset('assets/images/linkedin.png',
                              width: 24, height: 24),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(
                                'linkedin.com/in/tungpt95',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 15, left: 4, right: 4),
            child: Material(
              shadowColor: _shadowColor,
              elevation: _elevation,
              clipBehavior: Clip.antiAlias,
              shape: _shape,
              child: InkWell(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Image.asset('assets/images/skype.png',
                              width: 24, height: 24),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(
                                'live:phamthanhtung1995',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 15, left: 4, right: 4),
            child: Material(
              shadowColor: _shadowColor,
              elevation: _elevation,
              clipBehavior: Clip.antiAlias,
              shape: _shape,
              child: InkWell(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Image.asset('assets/images/github.png',
                              width: 24, height: 24),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(
                                'github.com/tungpham6195',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

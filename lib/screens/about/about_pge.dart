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
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(8),
        children: <Widget>[
          Card(
            elevation: 20,
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
                              color: Colors.grey[600],
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 4),
                          child: Text(
                            'Jan 06, 1995',
                            style: TextStyle(color: Colors.grey[600]),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 12),
                          child: Text(
                            '\"I\'m Flutter, Android Developer. I want to have more and more experiences in mobile development\"',
                            style: TextStyle(color: Colors.grey[600]),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Card(
            margin: EdgeInsets.only(top: 10, left: 4, right: 4),
            elevation: 20,
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
                        Icon(
                          Icons.phone,
                          color: Colors.deepOrange,
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text('+84-39-495-4959'),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.location_on,
                          color: Colors.deepOrange,
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                                '26/15 Street B3, Tay Thanh Ward. Tan Phu District, HCM City'),
                          ),
                        )
                      ],
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.mail,
                        color: Colors.deepOrange,
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text('phamthanhtung1995@gmail.com'),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.only(top: 15, left: 4, right: 4),
            elevation: 20,
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
                            child: Text('https://www.facebook.com/tungpt.95'),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.only(top: 15, left: 4, right: 4),
            elevation: 20,
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
                            child: Text('linkedin.com/in/tungpt95'),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.only(top: 15, left: 4, right: 4),
            elevation: 20,
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
                            child: Text('live:phamthanhtung1995'),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.only(top: 15, left: 4, right: 4),
            elevation: 20,
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
                            child: Text('https://github.com/tungpham6195'),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

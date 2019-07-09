import 'package:flutter/material.dart';
import 'package:hero_profile/screens/base/state/base_page_state.dart';
import 'package:hero_profile/widgets/customize_card.dart';
import 'package:package_info/package_info.dart';
import 'package:url_launcher/url_launcher.dart';

import 'info_card.dart';

class AboutPage extends StatefulWidget {
  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends BasePageState<AboutPage> {
  PackageInfo _packageInfo;
  String _versionName = '';

  @override
  void initState() {
    super.initState();
    _getVersion();
  }

  _getVersion() async {
    _packageInfo = await PackageInfo.fromPlatform();
    setState(() {
      _versionName = _packageInfo.version;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: ListView(
        padding: EdgeInsets.only(left: 8, right: 8, bottom: 100, top: 66),
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 4, right: 4),
            child: CustomizeCard(
              contentPadding: EdgeInsets.all(8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
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
                ],
              ),
            ),
          ),
          InfoCard(
            onTap: () => _launchUrl('tel:+84 394 954 959'),
            content: '+84-39-495-4959',
            icon: 'assets/images/phone.png',
          ),
          InfoCard(
            onTap: () =>_launchUrl('mailto:phamthanhtung1995@gmail.com'),
            content: 'phamthanhtung1995@gmail.com',
            icon: 'assets/images/gmail.png',
          ),
          InfoCard(
            onTap: () => _launchUrl('https://facebook.com/tungpt.95'),
            content: 'facebook.com/tungpt.95',
            icon: 'assets/images/facebook.png',
          ),
          InfoCard(
            onTap: () => _launchUrl('https://linkedin.com/in/tungpt95'),
            content: 'linkedin.com/in/tungpt95',
            icon: 'assets/images/linkedin.png',
          ),
          InfoCard(
            onTap: () {},
            content: 'live:phamthanhtung1995',
            icon: 'assets/images/skype.png',
          ),
          InfoCard(
            onTap: () => _launchUrl('https://github.com/tungpham6195'),
            content: 'github.com/tungpham6195',
            icon: 'assets/images/github.png',
          ),
          InfoCard(
            content: 'Version: $_versionName',
            icon: 'assets/images/ic_version.png',
          ),
        ],
      ),
    );
  }

  _launchUrl(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}

import 'package:flutter/material.dart';
import 'package:hero_profile/screens/base/state/base_page_state.dart';

class AboutPage extends StatefulWidget {
  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends BasePageState<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
              child: Material(
                type: MaterialType.card,
                elevation: 15,
                clipBehavior: Clip.antiAlias,
                shape: CircleBorder(),
                child: Image.network(
                  'https://scontent.fsgn5-2.fna.fbcdn.net/v/'
                  't1.0-9/26230311_1452700444852318_4211563881416746955_n.jpg?'
                  '_nc_cat=105&_nc_oc=AQmAnzc46n7nRPN6Z09HzK1zq7Dak9NodoVRn0vB6-Za2wNM31tiDTQBcQps3Nn4isaog89wsSjpnSnWyd_'
                  'REF6K&_nc_ht=scontent.fsgn5-2.fna&oh=0c00c0a3aadd8af7611c989341e89d32&oe=5D8B3D49',
                  width: 100,
                  height: 100,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

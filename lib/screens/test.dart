import 'package:avenger_information/models/character.dart';
import 'package:avenger_information/widgets/character_item.dart';
import 'package:flutter/material.dart';

class TestPage extends StatefulWidget {
  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation<Offset> _animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller =
        AnimationController(duration: Duration(seconds: 5), vsync: this);
    _animation = Tween<Offset>(begin: Offset(-1, 0), end: Offset.zero)
        .animate(controller);
    controller.forward();
    controller.repeat();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SlideTransition(
          position: _animation,
          child: CharacterItem(Character(
            name: 'Iron Man',
            appBarBg:
                'http://ucsdguardian.org/wp-content/uploads/2016/05/Feature_-Captain-America-Civil-War-02-Courtesy-of-SlickRickDesigns-for-CBM.jpg',
            drawerBg:
                'https://1.bp.blogspot.com/-olFt60uK5Wk/T8JiHzHxU4I/AAAAAAAAI74/jff2meDSids/s1600/Iron-Man-Wallpaper-HD-1080p-cyborg-photo1024.jpg',
            avatar:
                'https://thichanhdep.com/wp-content/uploads/2019/03/avatar-nhan-vat-iron-man1.jpg',
            series: 'Marvel Comics',
            sex: 'Male',
            alignment: 'Neutral Good',
          )),
        ),
      ),
    );
  }
}

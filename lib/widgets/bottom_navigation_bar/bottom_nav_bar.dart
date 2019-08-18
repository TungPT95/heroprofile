import 'package:flutter/material.dart';
import 'package:hero_profile/screens/base/state/base_page_state.dart';

import 'bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BottomNavBar extends StatefulWidget {
  final BottomNavItemClickCallback bottomNavItemClickCallback;

  static Widget create(
          {BottomNavItemClickCallback bottomNavItemClickCallback}) =>
      BlocProvider<BtmNavBarBloc>(
        builder: (c) => BtmNavBarBloc(startIndex: 2),
        child: BottomNavBar._(
          bottomNavItemClickCallback: bottomNavItemClickCallback,
        ),
      );

  BottomNavBar._({this.bottomNavItemClickCallback});

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends BasePageState<BottomNavBar> {
  BottomNavItemClickCallback get _bottomNavItemClickCallback =>
      widget.bottomNavItemClickCallback;

  BtmNavBarBloc _bloc;

  @override
  void initState() {
    _bloc = BlocProvider.of<BtmNavBarBloc>(context);
    super.initState();
  }

  @override
  void dispose() {
    _bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.passthrough,
      children: <Widget>[
        _buildNavBarBackground(),
        BlocListener<BtmNavBarBloc, dynamic>(
          listener: (c, state) {
            if (state is PageChangeState && _bottomNavItemClickCallback != null)
              _bottomNavItemClickCallback(state.nextPage, state.title);
          },
          child: BlocBuilder<BtmNavBarBloc, dynamic>(
            builder: (c, nextPage) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <BottomNavBaseItem>[
                  BottomNavItem(
                    'Comics',
                    icAsset: 'assets/images/ic_nav_comic.png',
                    index: 0,
                    bottomNavItemClickCallback: (page, title) {
                      _bloc.dispatch(PageChangeEvent(page, title: title));
                    },
                    width: scaleWidth(50),
                    isSelected: (nextPage as PageChangeState).nextPage == 0,
                  ),
                  BottomNavItem(
                    'Videos',
                    icAsset: 'assets/images/ic_nav_video.png',
                    bottomNavItemClickCallback: (page, title) {
                      _bloc.dispatch(PageChangeEvent(page, title: title));
                    },
                    width: scaleWidth(50),
                    index: 1,
                    isSelected: (nextPage as PageChangeState).nextPage == 1,
                  ),
                  BottomNavCenterItem(
                    title: 'Home',
                    bottomNavItemClickCallback: (page, title) {
                      _bloc.dispatch(PageChangeEvent(page, title: title));
                    },
                    height: scaleHeight(68),
                    index: 2,
                    isSelected: (nextPage as PageChangeState).nextPage == 2,
                  ),
                  BottomNavItem(
                    'Movies',
                    icAsset: 'assets/images/ic_nav_part.png',
                    bottomNavItemClickCallback: (page, title) {
                      _bloc.dispatch(PageChangeEvent(page, title: title));
                    },
                    width: scaleWidth(50),
                    index: 3,
                    isSelected: (nextPage as PageChangeState).nextPage == 3,
                  ),
                  BottomNavItem(
                    'About',
                    icAsset: 'assets/images/ic_nav_about.png',
                    bottomNavItemClickCallback: (page, title) {
                      _bloc.dispatch(PageChangeEvent(page, title: title));
                    },
                    width: scaleWidth(50),
                    index: 4,
                    isSelected: (nextPage as PageChangeState).nextPage == 4,
                  )
                ],
              );
            },
          ),
        ),
      ],
    );
  }

  _buildNavBarBackground() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: scaleHeight(35),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey[300],
              offset: Offset(5, -2),
              blurRadius: 15,
            ),
          ],
          color: Colors.white,
        ),
      ),
    );
  }
}

typedef BottomNavItemClickCallback = void Function(int index, String title);

abstract class BottomNavBaseItem extends StatelessWidget {
  final int index;
  final String title;
  final BottomNavItemClickCallback bottomNavItemClickCallback;
  final bool isSelected;

  BottomNavBaseItem(
      {this.index = 0,
      this.title = '',
      this.isSelected = false,
      this.bottomNavItemClickCallback})
      : assert(index >= 0),
        assert(title != null);
}

class BottomNavCenterItem extends BottomNavBaseItem {
  final double height;

  BottomNavCenterItem(
      {this.height = 68,
      int index = 0,
      String title,
      bool isSelected = false,
      BottomNavItemClickCallback bottomNavItemClickCallback})
      : assert(height > 0),
        super(
            index: index,
            title: title,
            isSelected: isSelected,
            bottomNavItemClickCallback: bottomNavItemClickCallback);

  @override
  Widget build(BuildContext context) {
    final _border = CircleBorder(
        side: BorderSide(
            color: isSelected ? Colors.black : Colors.transparent, width: 1.5));
    return Align(
      alignment: Alignment(0, 1 - 25 / MediaQuery.of(context).size.height),
      child: SizedBox(
        height: height,
        width: height,
        child: Material(
          shape: _border,
          clipBehavior: Clip.antiAlias,
          elevation: 10,
          color: Colors.white,
          child: InkWell(
            onTap: () {
              return bottomNavItemClickCallback != null
                  ? bottomNavItemClickCallback(index, title)
                  : () {};
            },
            child: Container(
              padding: EdgeInsets.all(height / 5),
              child: Image.asset(
                'assets/images/ic_nav_character.png',
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class BottomNavItem extends BottomNavBaseItem {
  final IconData icon;
  final double width;
  final String icAsset;

  BottomNavItem(String title,
      // ignore: avoid_init_to_null
      {this.icon = null,
      this.icAsset = '',
      this.width = 50,
      int index = 0,
      bool isSelected = false,
      BottomNavItemClickCallback bottomNavItemClickCallback})
      : assert(icon != null || icAsset != null),
        assert(index >= 0),
        assert(width > 0),
        super(
            index: index,
            title: title,
            isSelected: isSelected,
            bottomNavItemClickCallback: bottomNavItemClickCallback);

  @override
  Widget build(BuildContext context) {
    final _border = CircleBorder(
        side: BorderSide(
            color: isSelected ? Colors.black : Colors.transparent, width: 1.5));
    return Expanded(
      flex: 1,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            SizedBox(
              width: width,
              height: width,
              child: Material(
                clipBehavior: Clip.antiAlias,
                elevation: 10,
                animationDuration: Duration(milliseconds: 1000),
                shape: _border,
                color: Colors.white,
                child: InkWell(
                  customBorder: _border,
                  onTap: () {
                    return bottomNavItemClickCallback != null
                        ? bottomNavItemClickCallback(index, title)
                        : () {};
                  },
                  child: icon != null
                      ? Icon(
                          icon,
                          color: Colors.red[900],
                          size: 18,
                        )
                      : Container(
                          padding: EdgeInsets.all(width / 4),
                          child: Image.asset(
                            icAsset,
                          ),
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

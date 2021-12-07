import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:netflix/screens/download_screen.dart';
import 'package:netflix/screens/new_screen.dart';
import 'package:netflix/screens/search_screen.dart';
import 'package:netflix/screens/to_laugh_screen.dart';
import 'package:netflix/screens/welcome_screen.dart';

class App extends StatefulWidget {

  const App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {

  final PageController _pageController = PageController();
  int _selectedIndex = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: PageView(
        controller: _pageController,
          onPageChanged: (index) {
            setState(() => _selectedIndex = index);
          },
          children: const <Widget> [
            WelcomeScreen(),
            NewScreen(),
            ToLaughScreen(),
            SearchScreen(),
            DownloadScreen(),
          ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        iconSize: 22,
        unselectedFontSize: 10,
        selectedFontSize: 10,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        backgroundColor: Theme.of(context).primaryColor,
        fixedColor: Theme.of(context).colorScheme.secondary, 
        unselectedItemColor: Theme.of(context).colorScheme.secondaryVariant,
        onTap: _onBarItemTap,
        currentIndex: _selectedIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Foundation.home),
          ),
          BottomNavigationBarItem(
            label: "Coming Soon",
            icon: Icon(MaterialIcons.video_library),
          ),
          BottomNavigationBarItem(
            label: "Fast Laughs",
            icon: Icon(FontAwesomeIcons.smileBeam),
          ),
          BottomNavigationBarItem(
            label: "Search",
            icon: Icon(Feather.search),
          ),
          BottomNavigationBarItem(
            label: "Downloads",
            icon: Icon(FontAwesomeIcons.arrowAltCircleDown),
          )
        ],
      ),
    );
  }

  void _onBarItemTap(int index) {
    setState(() {
      _selectedIndex = index;
      _pageController.animateToPage(index, duration: const Duration(milliseconds: 250), curve: Curves.fastOutSlowIn);
    });
  }

}

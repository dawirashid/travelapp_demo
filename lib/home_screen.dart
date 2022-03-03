import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travelapp_demo/widgets/destination_carousel.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  int _selectedIndex = 0;  // method for selected item that can change

  final List<IconData> _icons = [
    FontAwesomeIcons.plane,
    FontAwesomeIcons.bed,
    FontAwesomeIcons.walking,
    FontAwesomeIcons.biking,
  ];

  Widget _buildicon(int index) {
    return GestureDetector(        // used gesture detector
      onTap: (){
        setState(() {
          _selectedIndex = index;
        });
        if (kDebugMode) {
          print(_selectedIndex);
        }
      },
      child: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          color: _selectedIndex == index ? Theme.of(context).colorScheme.secondary: const Color( // _selectedIndex for color change when selected
              0xc1ddf2f3),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Icon(
          _icons[index],
          size: 25,
          color: _selectedIndex == index?Theme.of(context).primaryColor: const Color(
              0xc184a1a1),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 10, right: 120),
              child: Text(
                'Lets Explore',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: _icons
                    .asMap()
                    .entries
                    .map(
                      (MapEntry map) => _buildicon(map.key),
                    )
                    .toList()),
            const SizedBox(height: 20,),
            const DestinationCarousel(),
          ],
        ), // used listview because it will be scrollable for all ui
      ),
    );
  }
}

import 'package:flutter/material.dart';

class PageViewSample extends StatefulWidget {
  @override
  _PageViewSampleState createState() => _PageViewSampleState();
}

class _PageViewSampleState extends State<PageViewSample> {
  late Widget first;
  late Widget second;
  late Widget third;
  late List<Widget> cards;
  final PageController _pageController = PageController(
    initialPage: 0,
    // initialPage: 2,
  );

  @override
  void initState() {
    super.initState();

    first = _buildCard('first');
    second = _buildCard('second');
    third = _buildCard('third');
    cards = [first, second, third];
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 100,
          child: PageView.builder(
            controller: _pageController,
            itemCount: cards.length,
            itemBuilder: (context, index) => cards[index],
            onPageChanged: (index) {
              print('onPageChanged > index : $index');
            },
          ),
        ),
        IconButton(
          onPressed: () {
            _pageController.jumpTo(1); // test
          },
          icon: Icon(Icons.star),
        ),
      ],
    );
  }

  Widget _buildCard(String title) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Center(
        child: Text(title),
      ),
    );
  }
}

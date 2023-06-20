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
  double currentIndex = 0.0;
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
            physics: const NeverScrollableScrollPhysics(),
            controller: _pageController,
            itemCount: cards.length,
            itemBuilder: (context, index) => cards[index],
          ),
        ),
        IconButton(
          onPressed: () {
            _pageController.jumpTo(0); // test
          },
          icon: Icon(Icons.home),
        ),
        IconButton(
          onPressed: () {
            double beforeIndex = currentIndex - 1.toDouble();
            if (beforeIndex >= 0) {
              _pageController.previousPage(
                duration: Duration(milliseconds: 300),
                curve: Curves.easeInOut,
              );
              setState(() {
                currentIndex--;
              });
            }
          },
          icon: Icon(Icons.navigate_before),
        ),
        IconButton(
          onPressed: () {
            double nextIndex = currentIndex + 1.toDouble();
            if (nextIndex <= cards.length - 1.toDouble()) {
              _pageController.nextPage(
                duration: Duration(milliseconds: 1),
                curve: Curves.easeInOut,
              );
              setState(() {
                currentIndex++;
              });
            }
          },
          icon: Icon(Icons.navigate_next),
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

import 'dart:async';

import 'package:xwood/export.dart';

class CarouselViewWidget extends StatelessWidget {
  CarouselViewWidget({super.key});

  List<Widget> bannerList = [
    Center(child: Text("1", style: TextStyle(color: Colors.deepPurple))),
    Center(child: Text("2", style: TextStyle(color: Colors.deepPurple))),
    Center(child: Text("3", style: TextStyle(color: Colors.deepPurple))),
  ];

  final indexController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.vertical,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Flexible(
          child: Padding(
            padding: px24,
            child: CarouselView(
              // controller: indexController,
              backgroundColor: Colors.yellow,

              itemExtent: MediaQuery.of(context).size.width - 50,
              shrinkExtent: 250,
              children: bannerList,
            ),
          ),
        ),
        gapy6,
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          children:
              bannerList.map((e) {
                return ClipRect(
                  child: Container(
                    height: 10,
                    padding: px8,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey,
                    ),
                  ),
                );
              }).toList(),
        ),
      ],
    );
  }
}

class CustomCarouselView extends StatefulWidget {
  const CustomCarouselView({super.key});

  @override
  State<CustomCarouselView> createState() => _CustomCarouselViewState();
}

class _CustomCarouselViewState extends State<CustomCarouselView> {
  List<String> bannerlist = [
    "https://images.pexels.com/photos/28783476/pexels-photo-28783476/free-photo-of-black-and-white-portrait-of-woman-with-tattoos.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/28783476/pexels-photo-28783476/free-photo-of-black-and-white-portrait-of-woman-with-tattoos.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/28783476/pexels-photo-28783476/free-photo-of-black-and-white-portrait-of-woman-with-tattoos.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  ];

  int _currentPage = 0;

  Timer? _timer;
  PageController _pageController = PageController(initialPage: 0);

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(Duration(seconds: 5), (Timer timer) {
      if (_currentPage < bannerlist.length) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      setState(() {});

      _pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 178,
      width: double.infinity,
      child: Column(
        spacing: 8.0,
        children: [
          Expanded(
            child: PageView.builder(
              itemCount: bannerlist.length,
              controller: _pageController,
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://images.pexels.com/photos/28783476/pexels-photo-28783476/free-photo-of-black-and-white-portrait-of-woman-with-tattoos.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                      ),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                );
              },
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: List.generate(
              bannerlist.length,
              (dotIndex) => Container(
                height: 6,
                padding: px8,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _currentPage == dotIndex ? Colors.red : Colors.grey,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

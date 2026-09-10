import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeSlider extends StatefulWidget {
  const HomeSlider({super.key});

  @override
  State<HomeSlider> createState() => _HomeSliderState();
}

class _HomeSliderState extends State<HomeSlider> {
  int activeindex = 0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        CarouselSlider(
          options: CarouselOptions(
            onPageChanged: (i, r) {
              setState(() {
                activeindex = i;
              });
            },
            height: 114.99371337890625,
            autoPlay: true,
            viewportFraction: 1,
            autoPlayInterval: Duration(seconds: 3),
          ),
          items: images
              .map(
                (i) => Container(
                  width: double.infinity,
                  // alignment: Alignment.bottomCenter,
                  padding: EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: Image.network(i).image,
                    ),
                  ),
                ),
              )
              .toList(),
        ),
        Positioned(
          bottom: 10,
          child: AnimatedSmoothIndicator(
            activeIndex: activeindex,
            count: images.length,
            effect: ExpandingDotsEffect(
              dotColor: Color(0xff030303),
              activeDotColor: Color(0xff53B175),
              dotHeight: 8,
              dotWidth: 12,
            ),
          ),
        ),
      ],
    );
  }
}

List<String> images = [
  'https://www.choicemarthawaii.com/wp-content/uploads/2017/06/slider-1-min-1.jpg',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQDojOLyk_IPT4TXn0vk_MmIkHk-IdNPBmU0rzUQM3fgXzDegr1HwUUD5fO&s=10',
  'https://img.magnific.com/free-vector/flat-design-grocery-store-facebook-cover_23-2151074216.jpg?semt=ais_hybrid&w=740&q=80',
  'https://static.vecteezy.com/system/resources/thumbnails/042/719/582/small/banner-luminous-fresh-vegetables-banner-for-healthy-eating-and-nutrition-campaigns-photo.jpg',
];

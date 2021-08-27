import 'package:bean/theme/sharedFontStyle.dart';
import 'package:bean/theme/sharedcolors.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map<String, dynamic>> data = [
    {'icon': Icons.settings, 'txt': 'Settings'},
    {'icon': Icons.phone, 'txt': 'Contact Us'},
    {'icon': Icons.info, 'txt': 'About Us'},
  ];

  List<String> offerImages = [
    'https://cdn.grabon.in/gograbon/images/web-images/uploads/1618575517942/food-coupons.jpg',
    'https://lirp.cdn-website.com/f9735f23/dms3rep/multi/opt/AC-2nd-deal-Portal-Banner-fedf013d-640w.jpg',
    'https://www.thesun.co.uk/wp-content/uploads/2020/10/647afe39-0bba-43ec-8003-7dcb9137e5ce.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarAndButtonColor,
        title: Text('Welcome', style: appBarButtonTextStyle),
        // leading: Icon(Icons.ac_unit, color: mainFontIconColor, size: 20),
      ),
      backgroundColor: Colors.white,
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            height: 200.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: offerImages.length,
              itemBuilder: (context, index) {
                return Container(
                  width: MediaQuery.of(context).size.width / 1.1,
                  margin: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      image: DecorationImage(
                          image: NetworkImage(offerImages[index]),
                          fit: BoxFit.fill)),
                );
              },
            ),
          ),
          Text(
            '   Nearby Chief...',
            style: mainTextStyle,
          ),
          for (int i = 0; i < 10; i++)
            Container(
              margin: EdgeInsets.all(10.0),
              child: ListTile(
                leading: Container(
                  height: 250.0,
                  width: 100.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://lh3.googleusercontent.com/proxy/i66-GuEtyaV_4RqUhR9PrC8WePQCfQNNJ4G-6fmVHNpw7e3DPzzNJCE2902wSRfPdBJ83tvIdC1UsO3Pe54d98N3Nq0ejTvYJEDy'),
                          fit: BoxFit.fill)),
                ),
                title: Text(
                  'Chief Shady',
                  style: mainTextStyle,
                ),
                subtitle: Text(
                  '(25) Review - 1.5 Star\n20 Km Away',
                  style: subTextStyle,
                ),
                trailing: Icon(Icons.favorite, color: Colors.red, size: 20.0),
              ),
            ),
        ],
      ),
    );
  }
}

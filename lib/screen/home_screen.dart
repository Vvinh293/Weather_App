import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:second_the_weather_app/global/global_icon.dart';
import 'package:second_the_weather_app/global/global_text.dart';
import 'package:second_the_weather_app/networks/location_networks.dart';
import 'home_screen_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            centerTitle: true,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: GlobalIcon(icon: Icons.location_on, iconSize: 30.0,),),
                GlobalText(text: '${Provider.of<LocationNetworks>(context).data}', fontSize: 25,)
              ],
            ),
          ),
          body: HomeScreenBody(),
        ),
      );
  }
}

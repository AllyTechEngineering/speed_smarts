import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:photo_view/photo_view.dart';

class ResultsScreen extends StatefulWidget {
  const ResultsScreen({super.key});

  @override
  State<ResultsScreen> createState() => _ResultsScreenState();
}

class _ResultsScreenState extends State<ResultsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_circle_left_outlined,
          ),
          onPressed: () => context.go('/'),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.settings,
            ),
            onPressed: () => context.go('/settings_screen'),
          ),
        ],
        centerTitle: true,
        title: Text(
          'Speed & Smarts',
          style: Theme.of(context).textTheme.displayLarge,
          softWrap: true,
          textAlign: TextAlign.center,
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/ocean_background.png'),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/ocean_background.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: ListView(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Expanded(
                //   flex: 2,
                //   child: TextSection(),
                // ),
                // SizedBox(width: 16),
                Expanded(
                  flex: 2,
                  child: ImageSection(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class TextSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Text Section',
            style: Theme.of(context).textTheme.bodySmall,
          ),
          SizedBox(height: 8.0),
          ListView(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: [
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: RichText(
                        textAlign: TextAlign.start,
                        text: TextSpan(
                          text:
                              'On most boats, the mainsail is easily the biggest upwind sail and therefore has a proportionally large effect on the boat’s speed and pointing performance. Because the mainsail must cover an incredible variety of wind and wave conditions, it has to be stretched and twisted into a wide range of aerodynamic shapes. Fortunately, there are quite a few sail controls to help with this. A sail control is a device (usually a line rigged with mechanical advantage) that helps us change the sail’s shape while racing. The primary controls affecting the mainsail are the mainsheet, traveler, vang, cunningham, backstay and outhaul. These systems allow us to adjust the depth of the sail, the location of that depth, the sail’s twist and the angle of the sail to the wind. We can achieve a very deep and twisted light-air shape, a flat bladed-out heavy-air foil, or almost any shape in between. But in order to get the different shapes we want, we have to know how each sail control works. When you pull on the vang, for example, what happens? And how does each control interact with the others to affect the mainsail’s shape? This issue will take an  in-depth look at six major mainsail controls and how each one can be used to optimize speed and pointing.',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ImageSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.blueAccent,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Text(
          //   'Image Section',
          //   style: Theme.of(context).textTheme.headline6,
          // ),
          SizedBox(height: 16),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 5, // Adjust the number of items as needed
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Center(
                          child: Image.asset(
                            'assets/images/image_$index.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.black,
                    height: 1.0,
                  ),
                  SizedBox(
                    height: 4.0,
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}

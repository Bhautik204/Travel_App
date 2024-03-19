import 'package:flutter/material.dart';
import 'package:travel_app/screen_2.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            // leading: const Icon(Icons.menu, color: Colors.black87, size: 30),
            // title: const Text('Drawer', style: TextStyle(color: Colors.black87)),
            actions: const <Widget>[
              Icon(Icons.search, color: Colors.black87, size: 30),
            ],
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text('Discover',
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 35,
                          fontWeight: FontWeight.w900)),
                  const SizedBox(height: 10),
                  const SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: <Widget>[
                        Chip(
                          label: Text('Popular'),
                          backgroundColor: Colors.orange,
                        ),
                        SizedBox(width: 10),
                        Chip(
                          label: Text('Featured'),
                          backgroundColor: Colors.black12,
                        ),
                        SizedBox(width: 10),
                        Chip(
                          label: Text('Lorem 1'),
                          backgroundColor: Colors.black12,
                        ),
                        SizedBox(width: 10),
                        Chip(
                          label: Text('Lorem 2'),
                          backgroundColor: Colors.black12,
                        ),
                        SizedBox(width: 50),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: 300,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          _buildDestinationCard(
                              'Ladakh',
                              'Lorem ipsum dolor sit ametLorem ipsum dolor sit Lorem ipsum dolor sit ametLorem ipsum dolor sit amet,Lorem ipsum dolor sit ametLorem ipsum dolor sit amett,,',
                              'Rs. 25,000',
                              'assets/image/ladakh.jpg'),
                          _buildDestinationCard(
                              'Kullu & Manali',
                              'Lorem ipsum dolor sit ametLorem ipsum dolor sit Lorem ipsum dolor sit ametLorem ipsum dolor sit amet,Lorem ipsum dolor sit ametLorem ipsum dolor sit amett,,',
                              'Rs. 25,000',
                              'assets/image/kullu manali.jpg'),
                          _buildDestinationCard(
                              'Rajasthan',
                              'Lorem ipsum dolor sit Lorem ipsum dolor sit ametLorem ipsum dolor sit amet,Lorem ipsum dolor sit ametLorem ipsum dolor sit Lorem ipsum dolor sit ametLorem ipsum dolor sit amet,Lorem ipsum dolor sit ametLorem ipsum dolor sit amett,',
                              'Rs. 25,000',
                              'assets/image/rajsathan.jpg'),
                          _buildDestinationCard(
                              'Sundarbans',
                              'Lorem ipsum dolor sit Lorem ipsum dolor sit ametLorem ipsum dolor sit amet,Lorem ipsum dolor sit ametLorem ipsum dolor sit Lorem ipsum dolor sit ametLorem ipsum dolor sit amet,Lorem ipsum dolor sit ametLorem ipsum dolor sit amett,',
                              'Rs. 25,000',
                              'assets/image/sundarban.jpg'),
                          _buildDestinationCard(
                              'Chennai',
                              'Lorem ipsum dolor sit ametLorem ipsum dolor sit Lorem ipsum dolor sit ametLorem ipsum dolor sit amet,Lorem ipsum dolor sit ametLorem ipsum dolor sit amett,,',
                              'Rs. 25,000',
                              'assets/image/cheenai.jpg'),
                          _buildDestinationCard(
                              'kolkata',
                              'Lorem ipsum dolor sit Lorem ipsum dolor sit ametLorem ipsum dolor sit amet,Lorem ipsum dolor sit ametLorem ipsum dolor sit Lorem ipsum dolor sit ametLorem ipsum dolor sit amet,Lorem ipsum dolor sit ametLorem ipsum dolor sit amett,',
                              'Rs. 25,000',
                              'assets/image/kolkata.jpg'),
                          // Add two more cards here
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      const Text('We Recommend',
                          style: TextStyle(color: Colors.black, fontSize: 20)),
                      TextButton(
                        onPressed: () {},
                        child: const Text('See all',
                            style: TextStyle(color: Colors.deepOrangeAccent)),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: 300,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          _buildDestinationCard(
                              'Rajasthan',
                              'Lorem ipsum dolor sit Lorem ipsum dolor sit ametLorem ipsum dolor sit amet,Lorem ipsum dolor sit ametLorem ipsum dolor sit Lorem ipsum dolor sit ametLorem ipsum dolor sit amet,Lorem ipsum dolor sit ametLorem ipsum dolor sit amett,',
                              'Rs. 25,000',
                              'assets/image/rajsathan.jpg'),
                          _buildDestinationCard(
                              'Sundarbans',
                              'Lorem ipsum dolor sit Lorem ipsum dolor sit ametLorem ipsum dolor sit amet,Lorem ipsum dolor sit ametLorem ipsum dolor sit Lorem ipsum dolor sit ametLorem ipsum dolor sit amet,Lorem ipsum dolor sit ametLorem ipsum dolor sit amett,',
                              'Rs. 25,000',
                              'assets/image/sundarban.jpg'),
                          _buildDestinationCard(
                              'Kullu & Manali',
                              'Lorem ipsum dolor sit ametLorem ipsum dolor sit Lorem ipsum dolor sit ametLorem ipsum dolor sit amet,Lorem ipsum dolor sit ametLorem ipsum dolor sit amett,',
                              'Rs. 25,000',
                              'assets/image/kullu manali.jpg'),
                          _buildDestinationCard(
                              'Chennai',
                              'Lorem ipsum dolor sit ametLorem ipsum dolor sit Lorem ipsum dolor sit ametLorem ipsum dolor sit amet,Lorem ipsum dolor sit ametLorem ipsum dolor sit amett,,',
                              'Rs. 25,000',
                              'assets/image/cheenai.jpg'),
                          _buildDestinationCard(
                              'kolkata',
                              'Lorem ipsum dolor sit Lorem ipsum dolor sit ametLorem ipsum dolor sit amet,Lorem ipsum dolor sit ametLorem ipsum dolor sit Lorem ipsum dolor sit ametLorem ipsum dolor sit amet,Lorem ipsum dolor sit ametLorem ipsum dolor sit amett,',
                              'Rs. 25,000',
                              'assets/image/kolkata.jpg'),
                          // Add two more cards here
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          drawer: Drawer(
            child: Column(
              children: [
                UserAccountsDrawerHeader(
                  currentAccountPictureSize: Size(70, 70),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            'assets/image/kolkata.jpg',
                          ),
                          fit: BoxFit.cover,
                          opacity: 0.8)),
                  accountName: Text('Stephen Mello'),
                  accountEmail: Text('stephen@example.com'),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage('assets/image/person.jpg'),
                  ),
                ),
                getDrawerMenuWidget('Home', Icons.home_outlined),
                getDrawerMenuWidget('My Saves', Icons.bookmark_border_outlined),
                getDrawerMenuWidget(
                    'My Favorite', Icons.favorite_border_outlined),
                getDrawerMenuWidget(
                  'Bookings',
                  Icons.card_travel,
                ),
                getDrawerMenuWidget('Draft Reviews', Icons.create_outlined),
                getDrawerMenuWidget('Downloaded Cities', Icons.map),
                Expanded(child: Container()),
                getDrawerMenuWidget('Logout', Icons.logout,
                    onListTileClick: () {
                  Navigator.of(context).pop();
                }),
              ],
            ),
          ),
        ));
  }

  Widget _buildDestinationCard(
      String title, String info, String price, String imagePath) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius:
            BorderRadius.circular(15.0), // This line applies the rounded effect
      ),
      margin: const EdgeInsets.symmetric(horizontal: 3, vertical: 0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.49,
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(15.0),
                        topRight: Radius.circular(15.0),
                      ),
                      child: Ink.image(
                        child: InkWell(onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Screen2()),
                          );
                        }),
                        image: AssetImage(imagePath),
                        // Assuming imagePath is a local asset
                        fit: BoxFit.cover,
                        width: MediaQuery.of(context).size.width * 0.5,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text(
                    title,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Text(
                      info,
                      style: const TextStyle(
                          fontSize: 12, fontWeight: FontWeight.w300),
                      maxLines: 4,
                    ),
                  ),
                ),
                const Divider(
                    indent: 5,
                    endIndent: 5,
                    height: 0,
                    color: Colors.deepOrangeAccent,
                    thickness: 0),
                Padding(
                  padding: const EdgeInsets.only(left: 0, bottom: 1),
                  child: ListTile(
                    title: Text('From',
                        style: TextStyle(
                            color: Colors.deepOrangeAccent, fontSize: 10)),
                    subtitle: Text(price,
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.indigo,
                            fontWeight: FontWeight.w700)),
                  ),
                ),
              ],
            ),
            // Positioned(
            //   bottom: 2, // Aligns the favorite icon with the price
            //   right: 2,
            //   child: IconButton( isSelected: ,
            //     onPressed: () {},
            //     icon: const Icon(Icons.favorite_border_rounded,
            //         color: Colors.black87),
            //     padding: const EdgeInsets.fromLTRB(11, 5, 9, 2),
            //   ),
            // ),
        Positioned(
          bottom: 2,
          right: 2,
          child: IconButton(
            onPressed: () {
              setState(() {
                _isSelected = !_isSelected;
              });
            },
            icon: Icon(
              Icons.favorite_border_rounded,
              color: _isSelected ? Colors.red : Colors.black87,
            ),
            padding: const EdgeInsets.fromLTRB(11, 5, 9, 2),
          ),
        )
          ],
        ),
      ),
    );
  }
  Widget getDrawerMenuWidget(title, icon, {onListTileClick}) {
    return ListTile(
      onTap: onListTileClick,
      title: Text(title),
      leading: Icon(icon),
    );
  }
}

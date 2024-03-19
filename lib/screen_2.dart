import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_outlined,
                color: Colors.black54),
            onPressed: () { Navigator.of(context).pop();
              // Add your onPressed code here for the leading button
            },
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.bookmark, color: Colors.black54),
              onPressed: () {
                // Add your onPressed code here for the trailing button
              },
            ),
          ],
        ),
        body: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
          return SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Image.asset("assets/image/sundarban.jpg"),
                SizedBox(height: 0.01 * constraints.maxHeight),
                Card(
                  child: Column(
                    children: [
                      const Padding(padding: EdgeInsets.all(0)),
                      ListTile(
                        subtitle: const Text('Forest in Asia',
                            style: TextStyle(
                              color: Colors.deepOrangeAccent,
                            )),
                        title: const Text('Sundarbans',
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: List.generate(
                              5,
                              (index) =>
                                  const Icon(Icons.star, color: Colors.yellow)),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                            'Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,'),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          ListTile(
                            title: const Text('No. of people in your group'),
                            subtitle: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: List.generate(
                                    7,
                                    (index) => Padding(
                                          padding: const EdgeInsets.all(4.0),
                                          // child: Text((index + 1).toString()),
                                          child: ElevatedButton(
                                              style: ButtonStyle(
                                                iconSize:
                                                    const MaterialStatePropertyAll(
                                                        10),
                                                shape:
                                                    MaterialStateProperty.all<
                                                        RoundedRectangleBorder>(
                                                  RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5.0),
                                                  ),
                                                ),
                                              ),
                                              onPressed: () {
                                                // Navigator.push(
                                                //   context,
                                                //   MaterialPageRoute(
                                                //       builder: (context) =>
                                                //           BookingPage()),
                                                // );
                                              },
                                              child:
                                                  Text((index + 1).toString())),
                                        )),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          ListTile(
                            title: const Text('Photos',
                                style: TextStyle(fontWeight: FontWeight.w700)),
                            subtitle: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Ink.image(
                                        image: const AssetImage(
                                            "assets/image/kullu manali.jpg"),
                                        height: 100,
                                        width: 80),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Ink.image(
                                        image: const AssetImage(
                                            "assets/image/sundarban.jpg"),
                                        height: 100,
                                        width: 80),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Ink.image(
                                        image: const AssetImage(
                                            "assets/image/kolkata.jpg"),
                                        height: 100,
                                        width: 80),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Ink.image(
                                        image: const AssetImage(
                                            "assets/image/cheenai.jpg"),
                                        height: 100,
                                        width: 80),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Ink.image(
                                        image: const AssetImage(
                                            "assets/image/ladakh.jpg"),
                                        height: 100,
                                        width: 80),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      ListTile(
                        title: const Text('Rs. 25,000',
                            style: TextStyle(
                                fontSize: 20, color: Colors.deepOrange)),
                        trailing: ElevatedButton(
                          onPressed: () {
                            showModalBottomSheet(
                              context: context,
                              builder: (context) {
                                return SingleChildScrollView(
                                  scrollDirection: Axis.vertical,
                                  child: SizedBox(
                                      height: 450,
                                      width: 500,
                                      child: Card(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                              15.0), // gives the card rounded borders
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            children: <Widget>[
                                              Row(
                                                children: [
                                                  Text('Book Your Trip',
                                                      style: TextStyle(
                                                          fontSize: 35)),
                                                ],
                                              ),
                                              TextField(
                                                decoration: InputDecoration(
                                                  filled: true,
                                                  fillColor: Color.fromRGBO(255,245,250, 1),
                                                  labelText: 'Name',
                                                  hintText: 'Enter Your Name',
                                                  prefixIcon: Icon(Icons.person,
                                                      color: Colors
                                                          .deepOrange // Set the icon color
                                                      ),
                                                ),
                                              ),
                                              TextField(
                                                decoration: InputDecoration(
                                                  filled: true,
                                                  fillColor: Color.fromRGBO(255,245,250, 1),
                                                  labelText: 'From',
                                                  hintText:
                                                      'Ahmedabad, Gujarat',
                                                  prefixIcon: Icon(
                                                      Icons.location_on,
                                                      color: Colors
                                                          .deepOrange), // adds an icon
                                                ),
                                              ),
                                              TextField(
                                                decoration: InputDecoration(
                                                  filled: true,
                                                  fillColor: Color.fromRGBO(255,245,250, 1),
                                                  labelText: 'To',
                                                  hintText:
                                                      'Bengaluru, Karnataka',
                                                  prefixIcon: Icon(
                                                      Icons.location_on,
                                                      color: Colors
                                                          .deepOrange), // adds an icon
                                                ),
                                              ),
                                              TextField(
                                                decoration: InputDecoration(
                                                  filled: true,
                                                  fillColor: Color.fromRGBO(255,245,250, 1),
                                                  labelText: 'Go',
                                                  hintText: 'Sun, 01-01-2020',
                                                  prefixIcon: Icon(
                                                      Icons.calendar_today,
                                                      color: Colors
                                                          .deepOrange), // adds an icon
                                                ),
                                              ),
                                              TextField(
                                                decoration: InputDecoration(
                                                  filled: true,
                                                  fillColor: Color.fromRGBO(255,245,250, 1),
                                                  labelText: 'Back',
                                                  hintText: 'Sun, 09-01-2020',
                                                  prefixIcon: Icon(
                                                      Icons.calendar_today,
                                                      color: Colors
                                                          .deepOrange), // adds an icon
                                                ),
                                              ),
                                              DropdownButton<String>(
                                                isExpanded: true,
                                                items: <String>[
                                                  'Economy',
                                                  'Business'
                                                ].map((String value) {
                                                  return DropdownMenuItem<
                                                      String>(
                                                    value: value,
                                                    child: Text(value),
                                                  );
                                                }).toList(),
                                                onChanged: (_) {},
                                                hint: Row(
                                                  children: [
                                                    Icon(
                                                        Icons
                                                            .airline_seat_recline_extra,
                                                        color:
                                                            Colors.deepOrange),
                                                    // adds an icon
                                                    Text('Select Class'),
                                                  ],
                                                ),
                                              ),
                                              ElevatedButton(
                                                onPressed: () {},
                                                style: ButtonStyle(
                                                  backgroundColor:
                                                      MaterialStateProperty.all<
                                                              Color>(
                                                          Colors.deepOrange),
                                                  minimumSize:
                                                      MaterialStateProperty
                                                          .all<Size>(Size(
                                                              double.infinity,
                                                              50)),
                                                ),
                                                child: Text('Book Now',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 20)),
                                              ),
                                            ],
                                          ),
                                        ),
                                      )),
                                );
                              },
                            );
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(builder: (context) => BookingPage()),
                            // );
                          },
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.black87)),
                          child: const Text('Book Your Trip Now',
                              style: TextStyle(color: Colors.white)),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: BookingPage(),
  ));
}

class BookingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowMaterialGrid: false,
      home: Scaffold(
        body: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              return SingleChildScrollView(
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          15.0), // gives the card rounded borders
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: <Widget>[
                          Image.asset("assets/image/sundarban.jpg"),
                          SizedBox(height: 0.01 * constraints.maxHeight),
                          // adds an image at the top
                          Row(
                            children: [
                              Icon(Icons.book), // adds an icon
                              Text('Book Your Trip',
                                  style: TextStyle(fontSize: 30)),
                            ],
                          ),
                          TextField(
                            decoration: InputDecoration(
                              labelText: 'Name',
                              hintText: 'Enter Your Name',
                              prefixIcon: Icon(Icons.person), // adds an icon
                            ),
                          ),
                          TextField(
                            decoration: InputDecoration(
                              labelText: 'From',
                              hintText: 'Ahmedabad, Gujarat',
                              prefixIcon: Icon(
                                  Icons.location_on), // adds an icon
                            ),
                          ),
                          TextField(
                            decoration: InputDecoration(
                              labelText: 'To',
                              hintText: 'Bengaluru, Karnataka',
                              prefixIcon: Icon(
                                  Icons.location_on), // adds an icon
                            ),
                          ),
                          TextField(
                            decoration: InputDecoration(
                              labelText: 'Go',
                              hintText: 'Sun, 01-01-2020',
                              prefixIcon: Icon(
                                  Icons.calendar_today), // adds an icon
                            ),
                          ),
                          TextField(
                            decoration: InputDecoration(
                              labelText: 'Back',
                              hintText: 'Sun, 09-01-2020',
                              prefixIcon: Icon(
                                  Icons.calendar_today), // adds an icon
                            ),
                          ),
                          DropdownButton<String>(
                            isExpanded: true,
                            items: <String>['Economy', 'Business'].map((
                                String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            onChanged: (_) {},
                            hint: Row(
                              children: [
                                Icon(Icons.airline_seat_recline_extra),
                                // adds an icon
                                Text('Select Class'),
                              ],
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.deepOrange),
                              minimumSize: MaterialStateProperty.all<Size>(
                                  Size(double.infinity, 50)),
                            ),
                            child: Text('Book Now', style: TextStyle(
                                color: Colors.white, fontSize: 20)),
                          ),
                        ],
                      ),
                    ),
                  )

              );
            }),
      ),
    );}
  }

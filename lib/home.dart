import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        title: Text('User Profile',
          style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: CircleAvatar(
                    radius: 50.0,
                    backgroundColor: Colors.transparent,
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/mambabalagbag.jpg'),
                        ),
                      ),
                    ),
                  ),
                ),
                Divider(height: 75, color: Colors.black, thickness: 5.0,),
                Row(
                  children: [
                    Icon(Icons.person,
                      color: Colors.white70,
                    ),
                    SizedBox(width: 3.0,),
                    Text(
                      'Name:',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black87,
                        letterSpacing: 2.0,
                      ),
                    ),
                  ],
                ),
                Text(
                  'Franze Ross Arroyo',
                  style: TextStyle(
                    fontSize:25.0 ,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: 30.0),
                Row(
                  children: [
                    Icon(Icons.calendar_today,
                      color: Colors.white70,
                    ),
                    SizedBox(width: 3.0,),
                    Text(
                      'Year:',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black87,
                        letterSpacing: 2.0,
                      ),
                    ),
                  ],
                ),
                Text(
                  'Third Year',
                  style: TextStyle(
                    fontSize:25.0 ,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: 30.0),
                Row(
                  children: [
                    Icon(Icons.email,
                      color: Colors.white70,
                    ),
                    SizedBox(width: 3.0,),
                    Text(
                      'Email:',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black87,
                        letterSpacing: 2.0,
                      ),
                    ),
                  ],
                ),
                Text(
                  'arroyofranzeross@gmail.com',
                  style: TextStyle(
                    fontSize:25.0 ,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ElevatedButton(
                    onPressed: (){},
                    child: Text('Add Year'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

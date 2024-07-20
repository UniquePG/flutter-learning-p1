import 'package:flutter/material.dart';

class Circle_avatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("CircleAvatar")),

//* basics of Circle avatar
        //   body: CircleAvatar(

        // //! we can put any child inside the circle avatar
        //     child: Text(
        //       "text inside circle",
        //       style: TextStyle(color: Colors.black, fontSize: 10),
        //     ),

        //     backgroundImage: AssetImage("assests/images/vector1.png"),
        //     backgroundColor: Colors.transparent,

        //     //! size of avatar
        //     radius: 50, // we can change the size of avatar using radius

        //     // minRadius: 30, //* with that whatever the size of our image it will not go less than this min size

        //     // maxRadius: 40,    //* any size image will not extent to this max size
        //   ),


//* Another use of Circle Avatar
        body: Center(
          child: CircleAvatar(
            child: Container(
              height: 70,
              width: 70,
              child: Column(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    child: Image.asset("assests/images/vector3.png"),
                  ),
                  Text("vector")
                ],
              ),
            ),
            
            backgroundColor: Colors.amber,
            maxRadius: 70,
          ),
        )

        );
  }
}

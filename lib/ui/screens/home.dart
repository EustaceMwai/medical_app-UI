import 'package:flutter/material.dart';
import 'package:medical_app/ui/widgets/doctor_container.dart';

import '../../global.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          // leading: IconButton(
          //   icon: Icon(
          //     Icons.menu,
          //     color: Colors.black54,
          //   ),
          //   onPressed: () {},
          // ),
          // leading: Center(
          //   child: CircleAvatar(
          //     backgroundImage: AssetImage("assets/images/A1.jpg"),
          //   ),
          // ),
          title: Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage("assets/images/A1.jpg"),
              ),
              SizedBox(
                width: 270.0,
              ),
              Expanded(
                flex: 4,
                child: Icon(
                  Icons.notifications,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        body: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Need a ",
                              style: Theme.of(context)
                                  .textTheme
                                  .display1
                                  .copyWith(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Doctor?",
                              style: Theme.of(context)
                                  .textTheme
                                  .display1
                                  .copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.menu,
                          color: Colors.black54,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  SizedBox(height: 9),
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search),
                            hintText: "Search",
                            filled: true,
                            fillColor: MyColors.grey,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Container(
                        height: 62.0,
                        width: 62.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            color: Colors.blue),
                        child: IconButton(
                          icon: Icon(
                            Icons.border_bottom,
                            color: Colors.black54,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 9),
                  // SizedBox(
                  //   height: MediaQuery.of(context).size.height / 4,
                  //   child: GestureDetector(
                  //     onTap: () => Navigator.push(
                  //       context,
                  //       MaterialPageRoute(
                  //         builder: (context) => DetailsScreen(id: 0),
                  //       ),
                  //     ),
                  //     child: Stack(
                  //       children: <Widget>[
                  //         Align(
                  //           alignment: Alignment.centerRight,
                  //           child: ClipRRect(
                  //             borderRadius: BorderRadius.circular(5.0),
                  //             child: Image.network(
                  //               "https://image.freepik.com/free-vector/doctor-concept-illustration_114360-1269.jpg",
                  //             ),
                  //           ),
                  //         ),
                  //         Positioned.fill(
                  //           child: Container(
                  //             padding: const EdgeInsets.all(11.0),
                  //             decoration: BoxDecoration(
                  //               borderRadius: BorderRadius.circular(5.0),
                  //               color: MyColors.blue.withOpacity(.3),
                  //             ),
                  //             child: Column(
                  //               crossAxisAlignment: CrossAxisAlignment.start,
                  //               mainAxisAlignment: MainAxisAlignment.center,
                  //               children: <Widget>[
                  //                 Text(
                  //                   "Do you have symptoms of Covid-19?",
                  //                   style:
                  //                       TextStyle(fontWeight: FontWeight.bold),
                  //                 ),
                  //                 RaisedButton(
                  //                   shape: RoundedRectangleBorder(
                  //                     borderRadius: BorderRadius.circular(25.0),
                  //                   ),
                  //                   color: MyColors.blue,
                  //                   child: Text(
                  //                     "Contact A Doctor",
                  //                     style: Theme.of(context).textTheme.button,
                  //                   ),
                  //                   onPressed: () => Navigator.push(
                  //                     context,
                  //                     MaterialPageRoute(
                  //                       builder: (context) =>
                  //                           DetailsScreen(id: 0),
                  //                     ),
                  //                   ),
                  //                 )
                  //               ],
                  //             ),
                  //           ),
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // ),
                  SizedBox(height: 9),
                  Text("Categories", style: Theme.of(context).textTheme.title),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 9.0),
                    height: 71,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: List.generate(
                        categories.length,
                        (f) => Container(
                          constraints: BoxConstraints(
                              maxWidth: MediaQuery.of(context).size.width / 2),
                          margin: const EdgeInsets.symmetric(horizontal: 9.0),
                          padding: const EdgeInsets.all(9.0),
                          decoration: BoxDecoration(
                            border: Border.all(color: MyColors.grey),
                            borderRadius: BorderRadius.circular(9.0),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                flex: 2,
                                child: Container(
                                  padding: const EdgeInsets.all(5.0),
                                  decoration: BoxDecoration(
                                    color: categories[f]['color'],
                                    borderRadius: BorderRadius.circular(9.0),
                                  ),
                                  child:
                                      Image.asset("${categories[f]['icon']}"),
                                ),
                              ),
                              Expanded(
                                  child: Text("${categories[f]['title']}")),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(9.0),
              decoration: BoxDecoration(
                color: MyColors.grey,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15.0),
                  topRight: Radius.circular(15.0),
                ),
              ),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Top Doctors",
                        style: Theme.of(context).textTheme.title,
                      ),
                      FlatButton(
                        child: Text("See All"),
                        onPressed: () {},
                      )
                    ],
                  ),
                  ListView.builder(
                    itemCount: doctorInfo.length,
                    shrinkWrap: true,
                    itemBuilder: (context, i) => DoctorContainer(id: i),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

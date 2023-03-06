import 'package:flutter/material.dart';
import 'menu.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.deepOrangeAccent,
          title: Text("BitsWits"),
          centerTitle: true,
        ),
        drawer: Menu(),
        body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.95,
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      image: const DecorationImage(
                          image:  AssetImage('assets/AppImages/blogshome.jpg'),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Blogs",
                                  style: TextStyle(
                                      fontSize: 42, color: Colors.white),
                                ),
                                Text(
                                  "All Published Blogs Count",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white),
                                ),
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.only(right: 20),
                              child: Text(
                                "150",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            )
                          ],
                        )),
                  ), //BLOGS CONTAINER
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.95,
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      image: const DecorationImage(
                          image:  AssetImage('assets/AppImages/leadshome.jpg'),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Leads",
                                  style: TextStyle(
                                      fontSize: 42, color: Colors.white),
                                ),
                                Text(
                                  "All Not Viewed Forms Lead Count",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white),
                                ),
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.only(right: 20),
                              child: Text(
                                "150",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            )
                          ],
                        )),
                  ), //LEADS CONTAINER
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.95,
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      image: const DecorationImage(
                          image: AssetImage('assets/AppImages/pageshome.jpg'),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Pages",
                                  style: TextStyle(
                                      fontSize: 42, color: Colors.white),
                                ),
                                Text(
                                  "All Published Pages",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white),
                                ),
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.only(right: 20),
                              child: Text(
                                "20",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            )
                          ],
                        )),
                  ), //PAGES CONTAINER
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.95,
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      image: const DecorationImage(
                          image: AssetImage('assets/AppImages/lphome.jpg'),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "LP",
                                  style: TextStyle(
                                      fontSize: 42, color: Colors.white),
                                ),
                                Text(
                                  "All PPC Pages",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white),
                                ),
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.only(right: 20),
                              child: Text(
                                "5",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            )
                          ],
                        )),
                  ), //LP CONTAINER
                ],
              ),
            )),
      ),
    );
  }
}

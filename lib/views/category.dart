import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      right: true,
      left: true,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(248, 10, 17, 121),
          title: const Text(
            'DBC',
            style: TextStyle(
                fontSize: 31.09,
                color: Color.fromARGB(255, 255, 255, 255),
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.normal),
          ),
          centerTitle: true,
          actions: [
            Container(
              child: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/profile');
                },
                icon: const Icon(
                  Icons.account_circle_outlined,
                  size: 33,
                ),
              ),
            )
          ],
        ),
        body: Column(children: [
          Expanded(
              flex: 5,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 210, 0),
                    child: Container(
                      child: Text(
                        'Catagory',
                        style: TextStyle(
                            fontSize: 20.08,
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal),
                      ),
                    ),
                  ),
                ],
              )),
          Expanded(
            flex: 60,
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    childAspectRatio: 1.5 / 2,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15),
                itemCount: 23,
                itemBuilder: (BuildContext ctx, index) {
                  return Padding(
                    padding: const EdgeInsets.all(9.0),
                    child: Container(
                      height: 400,
                      width: 137.11,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(255, 179, 173, 173),
                              blurRadius: 17.0,
                              spreadRadius: 5,
                              offset: Offset(3, 3),
                            ),
                          ],
                          color: Color.fromARGB(255, 124, 124, 122),
                          borderRadius: BorderRadius.circular(15)),
                      child: Text('hello'),
                    ),
                  );
                }),
          ),
        ]),
        drawer: Drawer(
        child: ListView(children: [
          Container(
            color: Colors.blue,
            height: 53,
            child: Row(
             children: const [
                 Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.menu_sharp,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Menu',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
          ElevatedButton(onPressed: () {
            Navigator.pushNamed(context, '/Contacts');
          }, child: Icon(Icons.home)),
          ElevatedButton(onPressed: () {
            Navigator.pushNamed(context, '/catagory');
          }, child: Icon(Icons.category_sharp)),
          ElevatedButton(onPressed: () {
            Navigator.pushNamed(context, '/Explor_page');
          }, child: Icon(Icons.explore_sharp))
        ]),
      ),
      ),
    );
  }
}

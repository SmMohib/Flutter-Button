import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {}, icon: Icon(Icons.add_to_photos_rounded))
          ],
          centerTitle: true,
          title: Text('Top 100 Businesman'),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 50,
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    color: Color.fromARGB(101, 33, 149, 243),
                    height: 60,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, top: 17),
                      child: Row(
                        children: [
                          Icon(Icons.search),
                          SizedBox(
                            width: 10,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                                label: Text('Search'),
                                fillColor: Colors.grey,
                                focusColor: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 70 / 90,
              child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: 20,
                  itemBuilder: ((context, index) {
                    return Card(
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          height: 100,
                          child: Row(children: [
                            Expanded(
                                flex: 3,
                                child: Image.network(
                                  'https://images.pexels.com/photos/12175838/pexels-photo-12175838.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                                  height: 90,
                                  width: 120,
                                )),
                            Expanded(
                                flex: 8, child: Text('ddddddd ffff fffff')),
                            Expanded(flex: 2, child: Icon(Icons.send)),
                          ]),
                        ),
                      ),
                    );
                  })),
            ),
          ],
        ));
  }
}

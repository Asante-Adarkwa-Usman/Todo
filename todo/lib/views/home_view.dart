import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
        actions: const [
          IconButton(
            onPressed: null,
            icon: Icon(Icons.notifications, color: Colors.white),
          ),
        ],
        backgroundColor: Colors.pink,
        title: const Text(
          'Todo App',
          // textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.w900,
            color: Colors.white,
            fontStyle: FontStyle.normal,
            // backgroundColor: Colors.black,
            // letterSpacing: 5.0,
            // wordSpacing: 15.0,
            // fontFamily: 'TimesNewRoman',
          ),
        ),
      ),
      // body: const Center(child: Icon(Icons.access_alarm_outlined, size: 100)),
      // body: 'Welcome to Ghana',
      // body: Container(
      //   color: Colors.grey,
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.spaceAround,
      //     children: [
      //       const CircleAvatar(
      //         radius: 50.0,
      //         backgroundImage: AssetImage('assets/images/baby.jpg'),
      //       ),
      //       const Icon(Icons.search_off_rounded),
      //       const Text('Hello Junior'),
      //       Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceAround,
      //         children: const [
      //           Text('Hello Junior'),
      //           Icon(Icons.search_off_rounded),
      //           CircleAvatar(
      //             radius: 50.0,
      //             backgroundImage: AssetImage('assets/images/baby.jpg'),
      //           ),
      //         ],
      //       ),
      //       // Image(image: image)
      //     ],
      //   ),
      // ),
      // body: ListView.separated(
      //     itemBuilder: (BuildContext context, int index) {
      //       return const ListTile(
      //         leading: CircleAvatar(
      //           radius: 30.0,
      //           backgroundImage: AssetImage('assets/images/baby.jpg'),
      //         ),
      //         title: Text('Hello Junior'),
      //         subtitle: Text("I'm so happy to see you bro!!"),
      //         trailing: Icon(Icons.favorite, color: Colors.pink),
      //       );
      //     },
      //     separatorBuilder: (BuildContext context, int index) {
      //       return const Divider();
      //     },
      //     itemCount: 20),
      // body: ListView(
      //   // scrollDirection: Axis.vertical,
      //   children: const [
      // ListTile(
      //   leading: CircleAvatar(
      //     radius: 30.0,
      //     backgroundImage: AssetImage('assets/images/baby.jpg'),
      //   ),
      //   title: Text('Asante Usman'),
      //   subtitle: Text("I'm so happy to see you bro!!"),
      //   trailing: Icon(Icons.favorite, color: Colors.pink),
      // ),
      // Divider(
      //   thickness: 1,
      //   color: Colors.grey,
      //   indent: 70,
      //   //endIndent: 70,
      // ),
      // ListTile(
      //   leading: CircleAvatar(
      //     radius: 30.0,
      //     backgroundImage: AssetImage('assets/images/baby.jpg'),
      //   ),
      //   title: Text('Asante Usman'),
      //   subtitle: Text("I'm so happy to see you bro!!"),
      //   trailing: Icon(Icons.favorite, color: Colors.pink),
      // ),
      // Divider(
      //   thickness: 1,
      //   color: Colors.grey,
      //   indent: 70,
      //   //endIndent: 70,
      // ),
      // ListTile(
      //   leading: CircleAvatar(
      //     radius: 30.0,
      //     backgroundImage: AssetImage('assets/images/baby.jpg'),
      //   ),
      //   title: Text('Asante Usman'),
      //   subtitle: Text("I'm so happy to see you bro!!"),
      //   trailing: Icon(Icons.favorite, color: Colors.pink),
      // ),
      // Divider(
      //   thickness: 1,
      //   color: Colors.grey,
      //   indent: 70,
      //   //endIndent: 70,
      // ),
      // ],
      //),
      body: ListView.separated(
          itemBuilder: (BuildContext context, int index) {
            return const ListTile(
              leading: CircleAvatar(
                radius: 30.0,
                backgroundImage: AssetImage('assets/images/baby.jpg'),
              ),
              title: Text('Asante Usman'),
              subtitle: Text("I'm so happy to see you bro!!"),
              trailing: Icon(Icons.favorite, color: Colors.pink),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return const Divider(
              thickness: 1,
              color: Colors.grey,
              indent: 70,
            );
            // return const SizedBox(
            //   height: 15,
            // );
          },
          itemCount: 15),
    );
  }
}

import 'package:flutter/material.dart';

class CreateTodoView extends StatelessWidget {
  const CreateTodoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(249, 250, 255, 1),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.topRight,
            margin: const EdgeInsets.only(top: 20, right: 20),
            padding: const EdgeInsets.only(top: 40, right: 20),
            child: SizedBox(
              width: 80,
              height: 75,
              child: Card(
                shape: const CircleBorder(
                  side: BorderSide(
                    color: Colors.grey,
                    width: 1,
                  ),
                ),
                // color: Colors.blue[100],
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.close,
                    size: 34,
                  ),
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(25, 150, 25, 50),
            child: TextField(
              maxLines: null,
              keyboardType: TextInputType.multiline,
              style: const TextStyle(
                fontSize: 25,
                color: Colors.black,
              ),
              cursorHeight: 30,
              cursorColor: const Color.fromRGBO(196, 196, 196, 1),
              decoration: InputDecoration(
                hintText: 'Enter new todo',
                hintStyle: const TextStyle(
                    fontSize: 26,
                    color: Color.fromRGBO(148, 156, 202, 1),
                    fontWeight: FontWeight.w400),
                fillColor: Colors.white,
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey.shade300,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(30)),
              ),
              //prefixIcon: Icon(Icons.person_pin_circle)
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 15),
            child: SizedBox(
              height: 70,
              width: 120,
              child: InkWell(
                onTap: () {},
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  color: Colors.white,
                  child: Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Icon(Icons.calendar_today, size: 24),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Text(
                          'Today',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Color.fromRGBO(139, 131, 131, 1)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );

    // body: Column(
    //   crossAxisAlignment: CrossAxisAlignment.start,
    //   children: [
    //     Container(
    //       padding: const EdgeInsets.fromLTRB(0, 35, 20, 0),
    //       alignment: Alignment.topRight,
    //       margin: const EdgeInsets.only(top: 20),
    //       child: Card(
    //         shape: const CircleBorder(
    //           side: BorderSide(
    //             color: Color.fromRGBO(171, 165, 165, 1),
    //             width: 1,
    //           ),
    //         ),
    //         child: IconButton(
    //             onPressed: () {
    //               Navigator.pop(context);
    //             },
    //             icon: const Icon(
    //               Icons.close,
    //               size: 30,
    //               color: Colors.black,
    //             )),
    //       ),
    //     ),
    //     Container(
    //       margin: const EdgeInsets.fromLTRB(0, 150, 0, 10),
    //       child: Padding(
    //         padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
    //         child: TextField(
    //           maxLines: null,
    //           keyboardType: TextInputType.multiline,
    //           style: const TextStyle(
    //             fontSize: 25,
    //             color: Colors.black,
    //           ),
    //           cursorHeight: 30,
    //           cursorColor: const Color.fromRGBO(196, 196, 196, 1),
    //           decoration: InputDecoration(
    //             hintText: 'Enter new task',
    //             hintStyle: const TextStyle(
    //               color: Color.fromRGBO(148, 156, 202, 1),
    //               fontSize: 26,
    //             ),
    //             fillColor: Colors.white,
    //             focusedBorder: OutlineInputBorder(
    //               borderSide:
    //                   const BorderSide(color: Colors.white, width: 2.0),
    //               borderRadius: BorderRadius.circular(25.0),
    //             ),
    //           ),
    //         ),
    //       ),
    //     ),
    //     Row(
    //       children: [
    //         InkWell(
    //           onTap: () {},
    //           child: Container(
    //             margin: const EdgeInsets.fromLTRB(15, 30, 10, 0),
    //             height: 75,
    //             width: 130,
    //             child: Card(
    //               elevation: 0,
    //               shape: RoundedRectangleBorder(
    //                 borderRadius: BorderRadius.circular(40),
    //               ),
    //               child: Row(
    //                 children: const [
    //                   IconButton(
    //                     onPressed: null,
    //                     icon: Icon(
    //                       Icons.calendar_today,
    //                       size: 30,
    //                       color: Colors.black,
    //                     ),
    //                   ),
    //                   Text(
    //                     'Today',
    //                     style: TextStyle(
    //                       fontSize: 20,
    //                       color: Colors.black,
    //                     ),
    //                   ),
    //                 ],
    //               ),
    //             ),
    //           ),
    //         ),
    //       ],
    //     ),
    //   ],
    // ),
  }
}

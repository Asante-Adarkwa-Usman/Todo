import 'package:flutter/material.dart';
// import 'package:unicons/unicons.dart';

class CreateTodoView extends StatelessWidget {
  const CreateTodoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(249, 250, 255, 1),
      body: SingleChildScrollView(
        child: Column(
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
            Row(
              children: [
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
                Container(
                  margin: const EdgeInsets.only(left: 30),
                  child: SizedBox(
                    width: 70,
                    height: 70,
                    child: InkWell(
                      onTap: () {},
                      child: const Card(
                        elevation: 0,
                        shape: CircleBorder(
                          side: BorderSide(
                            color: Color.fromRGBO(196, 196, 196, 1),
                            width: 1,
                          ),
                        ),
                        color: Colors.white,
                        child: Icon(Icons.radio_button_checked,
                            size: 30, color: Color.fromRGBO(22, 106, 237, 1)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 70),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  IconButton(
                    onPressed: null,
                    icon: Icon(
                      Icons.create_new_folder_outlined,
                      size: 30,
                      color: Color.fromRGBO(139, 148, 195, 1),
                    ),
                  ),
                  IconButton(
                    onPressed: null,
                    icon: Icon(
                      Icons.flag_outlined,
                      size: 30,
                      color: Color.fromRGBO(139, 148, 195, 1),
                    ),
                  ),
                  IconButton(
                    onPressed: null,
                    icon: Icon(
                      Icons.dark_mode_outlined,
                      size: 30,
                      color: Color.fromRGBO(139, 148, 195, 1),
                    ),
                  ),
                ],
              ),
            ),
            //The send button
            Container(
              alignment: Alignment.bottomRight,
              margin: const EdgeInsets.fromLTRB(0, 130, 30, 10),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.35,
                height: MediaQuery.of(context).size.height * 0.08,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        const Color.fromRGBO(22, 106, 237, 1),
                      ),
                    ),
                    onPressed: null,
                    child: Row(
                      children: const [
                        Text(
                          'New task',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        Icon(
                          Icons.expand_less_outlined,
                          size: 30,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

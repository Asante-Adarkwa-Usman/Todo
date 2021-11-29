import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:todo/views/create_todo_view.dart';

import 'custom_widgets/search_delegate.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(249, 250, 255, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(249, 250, 255, 1),
        elevation: 0,
        leading: const IconButton(
            //tooltip: 'Shows the drawer',
            onPressed: null,
            icon: Icon(Icons.menu,
                size: 26, color: Color.fromRGBO(171, 158, 158, 1))),
        actions: [
          IconButton(
            onPressed: () {
              showSearch(
                  context: context, delegate: MySearchDelegate(), query: '');
            },
            icon: const Icon(Icons.search,
                size: 26, color: Color.fromRGBO(171, 158, 158, 1)),
          ),
          const IconButton(
            onPressed: null,
            icon: Icon(Icons.notifications_outlined,
                size: 26, color: Color.fromRGBO(171, 158, 158, 1)),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(
                18,
              ),
              child: Text("What's up,Asante!",
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(34, 45, 87, 1))),
            ),
            const Padding(
              padding: EdgeInsets.all(18),
              child: Text('CATEGORIES',
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Color.fromRGBO(161, 167, 200, 1),
                  )),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.45,
                  height: MediaQuery.of(context).size.height * 0.15,
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Card(
                        elevation: 0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Text(
                                '40 tasks',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromRGBO(164, 169, 199, 1)),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 10.0),
                              child: Text(
                                'Business',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: LinearPercentIndicator(
                                width: MediaQuery.of(context).size.width * 0.32,
                                lineHeight: 4.0,
                                percent: 0.6,
                                progressColor: Colors.pink,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.45,
                  height: MediaQuery.of(context).size.height * 0.15,
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Card(
                        elevation: 0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Text(
                                '18 tasks',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromRGBO(164, 169, 199, 1)),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 10.0),
                              child: Text(
                                'Personal',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: LinearPercentIndicator(
                                width: MediaQuery.of(context).size.width * 0.32,
                                lineHeight: 4.0,
                                percent: 0.3,
                                progressColor: Colors.blue,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(18.0),
              child: Text(
                "TODAY'S TASKS",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    color: Color.fromRGBO(164, 169, 199, 1)),
              ),
            ),
            ConstrainedBox(
              constraints:
                  BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
              child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) => const Tasks(),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromRGBO(26, 106, 237, 1),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const CreateTodoView(),
            ),
          );
        },
        child: const Icon(Icons.add, size: 30),
      ),
    );
  }
}

class Tasks extends StatelessWidget {
  const Tasks({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            Radio(
              value: '',
              hoverColor: Colors.pink,
              onChanged: null,
              groupValue: '',
              activeColor: Colors.blue,
            ),
            Text(
              'Have lunch with Antwi',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  decoration: TextDecoration.lineThrough),
            ),
          ],
        ),
      ),
    );
  }
}

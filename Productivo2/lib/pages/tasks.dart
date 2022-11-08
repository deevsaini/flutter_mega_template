/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:iotask/pages/new-task.dart';
import 'package:iotask/pages/search.dart';
import '../helper/style.dart' as style;

class TasksPage extends StatefulWidget {
    TasksPage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Files';

    @override
    State<TasksPage> createState() => _TasksPageState();
}

class _TasksPageState extends State<TasksPage> {

List<Item> tasks = <Item> [
  Item('Template description', true, Color.fromARGB(255, 255, 249, 238), Color.fromARGB(255, 255, 186, 81), 'Sketch'),
  Item('Budget and contract', false, Color.fromARGB(255, 255, 249, 238), Color.fromARGB(255, 255, 186, 81), 'Sketch'),
  Item('Search for a UI kit', false, Color.fromARGB(255, 244, 252, 239), Color.fromARGB(255, 164, 227, 124), 'Spotify'),
  Item('Review created screens', false, Color.fromARGB(255, 255, 241, 247), Color.fromARGB(255, 255, 126, 179), 'Dribble'),
  Item('Design search page', true, Color.fromARGB(255, 255, 249, 238), Color.fromARGB(255, 255, 186, 81), 'Sketch'),
  Item('Prepare HTML & CSS', false, Color.fromARGB(255, 255, 249, 238), Color.fromARGB(255, 255, 186, 81), 'Sketch'),
  Item('Update a UI kit', false, Color.fromARGB(255, 244, 252, 239), Color.fromARGB(255, 164, 227, 124), 'Spotify'),
  Item('Browser testing', false, Color.fromARGB(255, 244, 252, 239), Color.fromARGB(255, 164, 227, 124), 'Spotify'),
  Item('Fix Issues', false, Color.fromARGB(255, 255, 241, 247), Color.fromARGB(255, 255, 126, 179), 'Dribble'),
  Item('Update a UI kit', false, Color.fromARGB(255, 244, 252, 239), Color.fromARGB(255, 164, 227, 124), 'Spotify'),
  Item('Design search page', false, Color.fromARGB(255, 244, 252, 239), Color.fromARGB(255, 164, 227, 124), 'Spotify'),
  Item('Search for a UI kit', false, Color.fromARGB(255, 255, 241, 247), Color.fromARGB(255, 255, 126, 179), 'Dribble'),
  Item('Design search page', false, Color.fromARGB(255, 244, 252, 239), Color.fromARGB(255, 164, 227, 124), 'Spotify'),
];

bool haveTask = false;

@override
Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: style.appBackColor,
    appBar: AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: Row(
        children: [
          IconButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return NewTaskPage();
                    }
                );
              },
              icon: Icon(Icons.add_circle_outline, color: style.appGrey)
          ),
          IconButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return SearchPage();
                    }
                );
              },
              icon: Icon(Icons.search_outlined, color: style.appGrey)
          ),
        ],
      ),
      leadingWidth: 110,
      title: Text('Tasks'),
      centerTitle: true,
      titleTextStyle: TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontFamily: 'medium'
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications_none, color: style.appGrey)
        ),
        CircleAvatar(
          radius: 20,
          backgroundImage: AssetImage('assets/images/user.jpg'),
        ),
        SizedBox(width: 16),
      ],
    ),
    body: _buildBody(context),
  );
}

Widget _buildBody(context) {
  return haveTask ? _haveTask() : _noTask();
}

Widget _haveTask() {
  return Container(
      width: double.infinity,
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 16),
      margin: EdgeInsets.all(16),
      child: ListView(
        shrinkWrap: true,
        physics: ScrollPhysics(),
        children: List.generate(tasks.length, (index) {
          return _buildSingleTask(tasks[index]);
        }),
      )
  );
}

Widget _noTask() {
  return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 16),
      margin: EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/no_task2.png'),
          Text('No tasks found?',
            style: TextStyle(
                fontSize: 20,
                fontFamily: 'medium'
            ),
          ),
          SizedBox(height: 8),
          Text('Try to assign more tasks to your employees or create a new project from scratch',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.grey,
                fontSize: 14
            ),
          ),
          Container(
            width: 250,
            margin: EdgeInsets.only(top: 100, bottom: 20),
            child: ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return NewTaskPage();
                    }
                );
              },
              child: Text('New Task'),
              style: style.simpleButton(),
            ),
          ),
        ],
      )
  );
}

greyTitle() {
  return TextStyle(
      fontFamily: 'medium',
      fontSize: 16,
      color: style.appGrey
  );
}

Widget _buildSingleTask(task) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 12),
    decoration: style.borderBottom(),
    child: Row(
      children: [
        Expanded(
            child: Row(
              children: [
                SizedBox(
                    width: 24,
                    height: 24,
                    child: Checkbox(
                        value: task.status,
                        onChanged: (bool? val) {
                          setState(() {
                            task.status = !task.status;
                          });
                        }
                    )
                ),
                SizedBox(width: 10),
                Expanded(
                    child: Text(task.title,
                      style: TextStyle(
                          fontFamily: 'medium',
                          fontSize: 15
                      ),
                    )
                )
              ],
            )
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
          decoration: BoxDecoration(
            color: task.clr1,
            borderRadius: BorderRadius.all(
                Radius.circular(5)
            ),
          ),
          child: Text(task.detail,
            style: TextStyle(
                color: task.clr2
            ),
          ),
        ),
      ],
    ),
  );
}

}

class Item {
    Item(this.title, this.status, this.clr1, this.clr2, this.detail);
    final String title;
    bool status;
    final Color clr1;
    final Color clr2;
    final String detail;
}
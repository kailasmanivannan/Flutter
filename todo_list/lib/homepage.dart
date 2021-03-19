import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import './list_details.dart';
import './addtask.dart';

class Homepage extends StatefulWidget {
  @override
  HomepageState createState() => HomepageState();
}

class HomepageState extends State<Homepage> {
  final List<Todolist> tasks = [];
  int id;
  void plustask(String taskdetails, DateTime taskdate) {
    int s = tasks.length;
    final newtask = Todolist(task: taskdetails, date: taskdate, id: s + 1);
    setState(() {
      tasks.add(newtask);
    });
  }

  void taskdelete(int id) {
    setState(() {
      tasks.removeWhere((tx) => tx.id == id);
    });
  }

  void startadd(BuildContext ct) {
    showModalBottomSheet(
      context: ct,
      builder: (_) {
        return GestureDetector(
          onTap: () {},
          child: Addtask(plustask),
          behavior: HitTestBehavior.opaque,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final List<Todolist> rtasks = List.from(tasks.reversed);
    return Scaffold(
        appBar: AppBar(
          title: Text('TodoApp'),
          backgroundColor: Colors.purple,
          actions: [
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () => startadd(context),
              iconSize: 35.0,
            ),
          ],
        ),
        body: rtasks.isEmpty
            ? Column(
                children: <Widget>[
                  SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: Text(
                      'No tasks yet Hooray !',
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: Container(
                        height: 200,
                        child: Image.asset(
                          'assets/images/done.png',
                          fit: BoxFit.cover,
                        )),
                  ),
                ],
              )
            : ListView.builder(
                itemBuilder: (ctx, index) {
                  return Card(
                    color: Colors.amberAccent,
                      elevation: 6,
                      margin: EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 10,
                      ),
                      child: ListTile(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        leading: CircleAvatar(
                            radius: 30,
                            foregroundColor: Colors.white,
                            backgroundColor: Colors.black,
                            child: Padding(
                                child: Text(
                                  (index + 1).toString(),
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold),
                                ),
                                padding: EdgeInsets.all(10))),
                        title: Padding(
                          padding: const EdgeInsets.only(
                              bottom: 5, right: 10, top: 5),
                          child: Text(
                            rtasks[index].task,
                            style: TextStyle(
                                fontSize: 20,fontWeight: FontWeight.bold),
                          ),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(
                              bottom: 10, right: 10, top: 5),
                          child: Text(
                            DateFormat.yMMMd().format(rtasks[index].date),
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        trailing: IconButton(
                          icon: Icon(Icons.delete),
                          onPressed: () => taskdelete(rtasks[index].id),
                          iconSize: 35.0,
                          color: Colors.red,
                        ),
                      ));
                },
                itemCount: rtasks.length,
              ));
  }
}

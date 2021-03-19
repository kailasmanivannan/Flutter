import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Addtask extends StatefulWidget {
  @override
  AddtaskState createState() => AddtaskState();
  final Function funcaddtask;
  Addtask(this.funcaddtask);
}

class AddtaskState extends State<Addtask> {
  final taskcontroller = new TextEditingController();
  String taskname;
  DateTime date;
  void submit() {
    if (taskcontroller.text.isEmpty || date==null) {
      Navigator.of(context).pop();
      return;
    }
    taskname = taskcontroller.text;
    widget.funcaddtask(
      taskname,
      date,
    );
    Navigator.of(context).pop();
  }

  void _presentDatePicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2050),
    ).then((pickedDate) {
      if (pickedDate == null) {
        return;
      } else {
        setState(() {
          date = pickedDate;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Container(
          child: Column(
            children: [
              TextField(
                  //autofocus: true,
                  style: TextStyle(fontSize: 25,),
                  decoration: InputDecoration(
                      labelText: 'Enter the Task',
                      labelStyle: TextStyle(
                        fontSize: 20,
                      )),
                  controller: taskcontroller,
                  onSubmitted: (_) => taskname = taskcontroller.text),
              SizedBox(
                height: 50,
              ),
              Text(
                date == null
                    ? 'No Date Chosen!'
                    : 'Picked Date: ${DateFormat.yMd().format(date)}',
                style: TextStyle(fontSize: 25,),
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: _presentDatePicker,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'pick up date',
                        style: TextStyle(fontSize: 25,),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: submit,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Done',
                        style: TextStyle(fontSize: 25,),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

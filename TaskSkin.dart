import 'package:flutter/material.dart';

class TaskSkin extends StatelessWidget {
  const TaskSkin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        onPressed: () {
          _showBottomDialog(context);
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: EdgeInsets.only(
                top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage("assets/images/nahiyan.jpeg"),
                ),
                SizedBox(height: 10),
                Text(
                  "Nahiyan Ibn Ershad",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  "nahiyanibnershad@gmail.com",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17.0,
                  ),
                ),
                SizedBox(height: 24),
                Text(
                  "My Tasks",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 32.0,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  "3 Tasks",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
              ),
              // Your task content goes here
            ),
          )
        ],
      ),
    );
  }

  void _showBottomDialog(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext builderContext) {
        return Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                'Add Task',
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.0),
              Divider(
                color: Colors.blue,
                height: 20,
                thickness: 2,
              ),
              SizedBox(height: 10.0),
              TextField(
                decoration: InputDecoration(
                  hintText: 'What do you got going on today?',
                ),
              ),
              SizedBox(height: 10.0),
              Container(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {
                    // Handle task submission
                    Navigator.pop(context);
                  },
                  style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all(Colors.lightBlueAccent),
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                    padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(vertical: 15.0),
                    ),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                  child: Text('Add'),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: TaskSkin(),
  ));
}

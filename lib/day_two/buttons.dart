import 'package:flutter/material.dart';

class ButtonsType extends StatelessWidget {
  const ButtonsType({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        height: MediaQuery.sizeOf(context).height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing:30,
          children: [
            TextButton(
              onPressed: () {
                print('TextButton clicked');
              },
              child: Text('Click Me'),
            ),
            ElevatedButton(
              onPressed: () {
                print('ElevatedButton clicked');
              },
              child: Text('Submit'),
            ),
            OutlinedButton(
              onPressed: () {
                print('OutlinedButton clicked');
              },
              child: Text('Cancel'),
            ),
            IconButton(
              onPressed: () {
                print('IconButton clicked');
              },
              icon: Icon(Icons.favorite),
            ),
            FloatingActionButton(
              onPressed: () {
                print('FAB clicked');
              },
              child: Icon(Icons.add),
            ),
            DropdownButton<String>(
              value: 'Option 1',
              items: [
                DropdownMenuItem(value: 'Option 1', child: Text('Option 1')),
                DropdownMenuItem(value: 'Option 2', child: Text('Option 2')),
              ],
              onChanged: (value) {
                print('Selected: $value');
              },
            ),
            GestureDetector(
              onTap: () {
                print('Custom Button clicked');
              },
              child: Container(
                padding: EdgeInsets.all(10),
                color: Colors.blue,
                child: Text('Custom Button', style: TextStyle(color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

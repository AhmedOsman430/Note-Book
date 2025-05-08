import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 200,
          width: double.infinity,
          padding: EdgeInsets.only(top: 24, bottom: 24),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.amber,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title: Text(
                  "Note 1",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    //fontFamily: "Edu Australia VIC WA NT Hand",
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text(
                    "Finish the tasks",
                    style: TextStyle(
                      color: Colors.grey.withOpacity(.8),
                      //fontFamily: "Edu Australia VIC WA NT Hand",
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.delete),
                  color: Colors.black,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 30),
                child: Text(
                  "4-5-2025",
                  style: TextStyle(
                    color: Colors.grey.withOpacity(.8),
                    fontSize: 20,
                    //fontFamily: "Edu Australia VIC WA NT Hand",
                    
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}

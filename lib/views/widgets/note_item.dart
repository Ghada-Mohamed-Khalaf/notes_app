import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
                title: const Text(
                  "Flutter Tips",
                  style: TextStyle(color: Colors.black),
                ),
                subtitle: const Text("build your career with ghada mohamed",
                    style: TextStyle(color: Colors.black)),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.delete, color: Colors.black),
                )),
            Text(
              "May15,2024",
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}

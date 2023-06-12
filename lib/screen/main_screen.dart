import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../widget/imageButton.dart';

class MyScreen extends StatefulWidget {
  const MyScreen({super.key});

  @override
  State<MyScreen> createState() => _MyScreenState();
}

class _MyScreenState extends State<MyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Photo Gallery'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Photos Uploaded Successfully!'),
            ),
          );
        },
        child: const Icon(Icons.cloud_upload),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: const Padding(
                padding: EdgeInsets.only(top: 15, bottom: 15),
                child: Center(
                  child: Text(
                    "Welcome to My Photo Gallery!",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon: Icon(Icons.search),
                  labelText: 'Search',
                ),
              ),
            ),
            Wrap(
              alignment: WrapAlignment.spaceAround,
              spacing: 10,
              runSpacing: 10,
              children: const [
                ImageButton(
                  ImageUrl: 'https://picsum.photos/200/300',
                  CategoryName: 'Caption',
                ),
                ImageButton(
                  ImageUrl: 'https://picsum.photos/200/300',
                  CategoryName: 'Caption',
                ),
                ImageButton(
                  ImageUrl: 'https://picsum.photos/200/300',
                  CategoryName: 'Caption',
                ),
                ImageButton(
                  ImageUrl: 'https://picsum.photos/200/300',
                  CategoryName: 'Caption',
                ),
                ImageButton(
                  ImageUrl: 'https://picsum.photos/200/300',
                  CategoryName: 'Caption',
                ),
                ImageButton(
                  ImageUrl: 'https://picsum.photos/200/300',
                  CategoryName: 'Caption',
                ),
              ],
            ),
            ListView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: const [
                ListTile(
                  leading: Icon(Icons.image),
                  title: Text('Sample Photo 1'),
                  subtitle: Text('caption 1'),
                ),
                ListTile(
                  leading: Icon(Icons.image),
                  title: Text('Sample Photo 1'),
                  subtitle: Text('Category 1'),
                ),
                ListTile(
                  leading: Icon(Icons.image),
                  title: Text('Sample Photo 1'),
                  subtitle: Text('Category 1'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

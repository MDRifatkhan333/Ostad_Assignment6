import 'package:flutter/material.dart';

class ImageButton extends StatelessWidget {
  final String ImageUrl;
  final String CategoryName;

  const ImageButton({
    super.key,
    required this.ImageUrl,
    required this.CategoryName,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        OutlinedButton(
          style: OutlinedButton.styleFrom(
            padding: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Clicked on photo!'),
              ),
            );
          },
          child: Image(
            height: 115,
            width: 115,
            fit: BoxFit.cover,
            image: NetworkImage(
              ImageUrl,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            CategoryName,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Colors.white,
              backgroundColor: Colors.black54,
            ),
          ),
        ),
      ],
    );
  }
}

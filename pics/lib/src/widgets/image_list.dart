import 'package:flutter/material.dart';
import 'package:pics/src/models/image_models.dart';

class ImageList extends StatelessWidget {
  final List<ImageModel> images;

  ImageList(this.images);


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: images.length,
        itemBuilder: (context, int index) {
          
        }
    );
  }
}

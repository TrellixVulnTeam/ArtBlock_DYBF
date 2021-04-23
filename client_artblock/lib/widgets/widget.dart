import 'package:artblock/model/photos_model.dart';
import 'package:flutter/material.dart';

Widget BrandName() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Text('Art', style: TextStyle(color: Colors.black87)),
      Text(
        'Block',
        style: TextStyle(color: Colors.red),
      )
    ],
  );
}

Widget photosList({List<PhotosModel> photos, context}) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 16),
    child: GridView.count(
      shrinkWrap: true,
      physics: ClampingScrollPhysics(),
      crossAxisCount: 2,
      childAspectRatio: .6,
      mainAxisSpacing: 6.0,
      crossAxisSpacing: 6.0,
      children: photos.map((photo) {
        return GridTile(child: Container(child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Image.network(photo.src.portrait, fit: BoxFit.cover,))));
      }).toList(),
    ),
  );
}

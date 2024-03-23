import 'package:flutter/material.dart';
import 'package:routes_flutter/pages/photo_page.dart';

class GalleryPage extends StatelessWidget {
  const GalleryPage({super.key});

  static const nameRoute = '/gallerypage';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gallery Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "GALLERY PAGE",
              style: TextStyle(
                fontSize: 50,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(onPressed: () {
                  Navigator.of(context).pop();
                }, child: Text("<< Back",style: TextStyle(
                  fontSize: 25,
                ),),
                ),
                TextButton(onPressed: () {
                  Navigator.of(context).pushNamed(PhotoPage.nameRoute);
                }, child: Text("Next >>",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

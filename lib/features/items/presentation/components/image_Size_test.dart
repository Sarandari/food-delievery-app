import 'package:flutter/material.dart';

class ImageSizeTest extends StatefulWidget {
  const ImageSizeTest({super.key});

  @override
  State<ImageSizeTest> createState() => _ImageSizeTestState();
}

class _ImageSizeTestState extends State<ImageSizeTest> {
  late Image image;
  Size? imageSize;

  @override
  void initState() {
    super.initState();

    image = Image.asset('assets/images/food-type-1.png');

    // Зурагны хэмжээг унших
    image.image.resolve(const ImageConfiguration()).addListener(
      ImageStreamListener((ImageInfo info, bool _) {
        setState(() {
          imageSize = Size(
            info.image.width.toDouble(),
            info.image.height.toDouble(),
          );
        });
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: imageSize == null
            ? const CircularProgressIndicator()
            : Text(
          "Зурагны хэмжээ: ${imageSize!.width} x ${imageSize!.height}",
          style: const TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

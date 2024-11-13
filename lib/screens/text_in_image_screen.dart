import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '../di/service_locator.dart';
import '../view_model/text_in_image_viewmodel.dart';  // Optional for network images

class TextInImageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => getIt<TextInImageViewModel>(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Text in Image with MVVM and DI'),
        ),
        body: Consumer<TextInImageViewModel>(
          builder: (context, viewModel, child) {
            return Stack(
              alignment: Alignment.center,
              children: [
                CachedNetworkImage(  // Use this for network images
                  imageUrl: viewModel.imageUrl,
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: double.infinity,
                  placeholder: (context, url) => const CircularProgressIndicator(),
                ),
                // For a local image, use Image.asset() instead:
                // Image.asset('assets/your_image.png', fit: BoxFit.cover),

                // Overlay text on top of the image
                Positioned(
                  bottom: 20,
                  child: Text(
                    viewModel.text,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      shadows: [
                        Shadow(
                          blurRadius: 10.0,
                          color: Colors.black,
                          offset: Offset(2.0, 2.0),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 80,
                  child: ElevatedButton(
                    onPressed: () {
                      viewModel.updateText("Updated Text on Image!");
                    },
                    child: Text("Change Text"),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

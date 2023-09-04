import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:study_flutter_13_totally03_lec_mvvm/view/album_view.dart';
import 'package:study_flutter_13_totally03_lec_mvvm/viewModel/album_view_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ChangeNotifierProvider<AlbumViewModel>(
        create: (context) => AlbumViewModel(),
        child: const AlbumView(),
      ),
    );
  }
}

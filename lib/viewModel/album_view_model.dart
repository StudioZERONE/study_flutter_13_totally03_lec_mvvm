import 'package:flutter/material.dart';
import 'package:study_flutter_13_totally03_lec_mvvm/model/album.dart';
import 'package:study_flutter_13_totally03_lec_mvvm/repository/album_repository.dart';

class AlbumViewModel with ChangeNotifier {
  late final AlbumRepository _albumRepository;
  List<Album> _albumList = List.empty(growable: true);
  List<Album> get albumList => _albumList;

  AlbumViewModel() {
    _albumRepository = AlbumRepository();
    _getAlbumList();
  }

  Future<void> _getAlbumList() async {
    _albumList = await _albumRepository.getAlbumList();
    notifyListeners();
  }
}

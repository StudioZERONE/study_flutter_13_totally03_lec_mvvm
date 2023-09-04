import 'package:study_flutter_13_totally03_lec_mvvm/dataSource/data_source.dart';
import 'package:study_flutter_13_totally03_lec_mvvm/model/album.dart';

class AlbumRepository {
  final DataSource _dataSource = DataSource();

  Future<List<Album>> getAlbumList() {
    return _dataSource.getAlbumList();
  }
}

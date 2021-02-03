import 'HomePage.dart';

class Dat {
  int albumId;
  int id;
  String title;
  String url;
  String thumbnailUrl;
  List data;

  Dat(
      {this.url,
      this.thumbnailUrl,
      this.id,
      this.albumId,
      this.title,
      this.data});

  Dat.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    thumbnailUrl = json['thumbnailUrl '];
    id = json['id'];
    albumId = json['albumId'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['url'] = this.url;
    data['thumbnailUrl'] = this.thumbnailUrl;
    data['id'] = this.id;
    data['albumid'] = this.albumId;
    data['title'] = this.albumId;
    return data;
  }
}

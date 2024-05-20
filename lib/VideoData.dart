class VideoData {
  String id;
  String videoName;

  VideoData(this.id, this.videoName);

  Map<String, dynamic> toJson() => {
    'id': id,
    'videoName': videoName,
  };

  factory VideoData.fromJson(Map<String, dynamic> json) {
    return VideoData(
      json['id'],
      json['videoName'],
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is VideoData && other.id == id;
  }

  @override
  int get hashCode => id.hashCode;
}
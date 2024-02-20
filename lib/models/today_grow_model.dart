/// TODO::모델변경필요

class TodayGrowModel {
  /// 카드제목
  final String title;

  /// 이미지URL
  final String imageUrl;

  /// 등록일
  final String createDate;

  /// 메모
  final String memo;

  const TodayGrowModel({
    required this.title,
    required this.createDate,
    required this.memo,
    required this.imageUrl,
  });

  factory TodayGrowModel.fromJson(Map<String, dynamic> json) {
    return TodayGrowModel(
        title: json['title'],
        createDate: json['createDate'],
        memo: json['memo'],
        imageUrl: json['imageUrl']);
  }
}

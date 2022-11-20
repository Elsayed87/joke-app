class JokeModel {
  final String ?setup;
  final String? delivery;
  final int id;

  JokeModel({required this.setup, required this.delivery, required this.id});
  factory JokeModel.fromJson(json) {
    return JokeModel(
        setup: json['setup']??'nothig to show', delivery: json['delivery']??'nothig to show', id: json['id']);
  }
}

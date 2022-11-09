class Countrymodel {
  Countrymodel({
    this.userId,
    this.id,
    this.title,
    this.body,
  });

  int? userId;
  int? id;
  String? title;
  String? body;

  Countrymodel copyWith({
    int? userId,
    int? id,
    String? title,
    String? body,
  }) =>
      Countrymodel(
        userId: userId ?? this.userId,
        id: id ?? this.id,
        title: title ?? this.title,
        body: body ?? this.body,
      );
}
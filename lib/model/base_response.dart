class BaseResponse {
  BaseResponse({
    this.count,
    this.next,
    this.previous,
    this.results,
  });

  BaseResponse.fromJson(dynamic json) {
    count = json['count'] as int;
    next = json['next'];
    previous = json['previous'];
    results = json['results'] as List<dynamic>;
  }

  int? count;
  dynamic next;
  dynamic previous;
  List<dynamic>? results;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['count'] = count;
    map['next'] = next;
    map['previous'] = previous;
    map['results'] = results;
    return map;
  }
}

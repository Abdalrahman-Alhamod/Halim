import '../../domain/entities/search_keyword_entity.dart';

class SearchKeywordModel extends SearchKeywordEntity {
  SearchKeywordModel({super.id, super.word});

  @override
  String toString() => 'SearchKeyword(id: $id, word: $word)';

  factory SearchKeywordModel.fromJson(Map<String, dynamic> json) =>
      SearchKeywordModel(
        id: json['id'] as int?,
        word: json['word'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'word': word,
      };

  SearchKeywordModel copyWith({
    int? id,
    String? word,
  }) {
    return SearchKeywordModel(
      id: id ?? this.id,
      word: word ?? this.word,
    );
  }
}

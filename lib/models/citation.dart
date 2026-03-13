import 'package:freezed_annotation/freezed_annotation.dart';

part 'citation.freezed.dart';
part 'citation.g.dart';

/// Legal citation reference.
@freezed
class Citation with _$Citation {
  const factory Citation({
    required String act,
    String? section,
    String? subsection,
    required String text,
    @JsonKey(name: 'source_file') String? sourceFile,
  }) = _Citation;

  factory Citation.fromJson(Map<String, dynamic> json) =>
      _$CitationFromJson(json);
}

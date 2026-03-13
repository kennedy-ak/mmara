// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'citation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CitationImpl _$$CitationImplFromJson(Map<String, dynamic> json) =>
    _$CitationImpl(
      act: json['act'] as String,
      section: json['section'] as String?,
      subsection: json['subsection'] as String?,
      text: json['text'] as String,
      sourceFile: json['source_file'] as String?,
    );

Map<String, dynamic> _$$CitationImplToJson(_$CitationImpl instance) =>
    <String, dynamic>{
      'act': instance.act,
      'section': instance.section,
      'subsection': instance.subsection,
      'text': instance.text,
      'source_file': instance.sourceFile,
    };

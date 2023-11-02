// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movies_cache_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetMovieCacheModelCollection on Isar {
  IsarCollection<MovieCacheModel> get movieCacheModels => this.collection();
}

const MovieCacheModelSchema = CollectionSchema(
  name: r'MovieCacheModel',
  id: -7883600445062609799,
  properties: {
    r'backDropPath': PropertySchema(
      id: 0,
      name: r'backDropPath',
      type: IsarType.string,
    ),
    r'modelId': PropertySchema(
      id: 1,
      name: r'modelId',
      type: IsarType.long,
    ),
    r'originalTitle': PropertySchema(
      id: 2,
      name: r'originalTitle',
      type: IsarType.string,
    ),
    r'overview': PropertySchema(
      id: 3,
      name: r'overview',
      type: IsarType.string,
    ),
    r'posterPath': PropertySchema(
      id: 4,
      name: r'posterPath',
      type: IsarType.string,
    ),
    r'releaseDate': PropertySchema(
      id: 5,
      name: r'releaseDate',
      type: IsarType.string,
    ),
    r'title': PropertySchema(
      id: 6,
      name: r'title',
      type: IsarType.string,
    ),
    r'voteAverage': PropertySchema(
      id: 7,
      name: r'voteAverage',
      type: IsarType.long,
    )
  },
  estimateSize: _movieCacheModelEstimateSize,
  serialize: _movieCacheModelSerialize,
  deserialize: _movieCacheModelDeserialize,
  deserializeProp: _movieCacheModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _movieCacheModelGetId,
  getLinks: _movieCacheModelGetLinks,
  attach: _movieCacheModelAttach,
  version: '3.1.0+1',
);

int _movieCacheModelEstimateSize(
  MovieCacheModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.backDropPath.length * 3;
  bytesCount += 3 + object.originalTitle.length * 3;
  bytesCount += 3 + object.overview.length * 3;
  bytesCount += 3 + object.posterPath.length * 3;
  bytesCount += 3 + object.releaseDate.length * 3;
  bytesCount += 3 + object.title.length * 3;
  return bytesCount;
}

void _movieCacheModelSerialize(
  MovieCacheModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.backDropPath);
  writer.writeLong(offsets[1], object.modelId);
  writer.writeString(offsets[2], object.originalTitle);
  writer.writeString(offsets[3], object.overview);
  writer.writeString(offsets[4], object.posterPath);
  writer.writeString(offsets[5], object.releaseDate);
  writer.writeString(offsets[6], object.title);
  writer.writeLong(offsets[7], object.voteAverage);
}

MovieCacheModel _movieCacheModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = MovieCacheModel(
    backDropPath: reader.readStringOrNull(offsets[0]) ?? '',
    modelId: reader.readLongOrNull(offsets[1]) ?? 1,
    originalTitle: reader.readStringOrNull(offsets[2]) ?? '',
    overview: reader.readStringOrNull(offsets[3]) ?? '',
    posterPath: reader.readStringOrNull(offsets[4]) ?? '',
    releaseDate: reader.readStringOrNull(offsets[5]) ?? '',
    title: reader.readStringOrNull(offsets[6]) ?? '',
    voteAverage: reader.readLongOrNull(offsets[7]) ?? 0,
  );
  object.id = id;
  return object;
}

P _movieCacheModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset) ?? '') as P;
    case 1:
      return (reader.readLongOrNull(offset) ?? 1) as P;
    case 2:
      return (reader.readStringOrNull(offset) ?? '') as P;
    case 3:
      return (reader.readStringOrNull(offset) ?? '') as P;
    case 4:
      return (reader.readStringOrNull(offset) ?? '') as P;
    case 5:
      return (reader.readStringOrNull(offset) ?? '') as P;
    case 6:
      return (reader.readStringOrNull(offset) ?? '') as P;
    case 7:
      return (reader.readLongOrNull(offset) ?? 0) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _movieCacheModelGetId(MovieCacheModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _movieCacheModelGetLinks(MovieCacheModel object) {
  return [];
}

void _movieCacheModelAttach(
    IsarCollection<dynamic> col, Id id, MovieCacheModel object) {
  object.id = id;
}

extension MovieCacheModelQueryWhereSort
    on QueryBuilder<MovieCacheModel, MovieCacheModel, QWhere> {
  QueryBuilder<MovieCacheModel, MovieCacheModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension MovieCacheModelQueryWhere
    on QueryBuilder<MovieCacheModel, MovieCacheModel, QWhereClause> {
  QueryBuilder<MovieCacheModel, MovieCacheModel, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QAfterWhereClause>
      idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension MovieCacheModelQueryFilter
    on QueryBuilder<MovieCacheModel, MovieCacheModel, QFilterCondition> {
  QueryBuilder<MovieCacheModel, MovieCacheModel, QAfterFilterCondition>
      backDropPathEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'backDropPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QAfterFilterCondition>
      backDropPathGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'backDropPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QAfterFilterCondition>
      backDropPathLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'backDropPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QAfterFilterCondition>
      backDropPathBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'backDropPath',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QAfterFilterCondition>
      backDropPathStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'backDropPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QAfterFilterCondition>
      backDropPathEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'backDropPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QAfterFilterCondition>
      backDropPathContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'backDropPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QAfterFilterCondition>
      backDropPathMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'backDropPath',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QAfterFilterCondition>
      backDropPathIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'backDropPath',
        value: '',
      ));
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QAfterFilterCondition>
      backDropPathIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'backDropPath',
        value: '',
      ));
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QAfterFilterCondition>
      idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QAfterFilterCondition>
      idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QAfterFilterCondition>
      idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QAfterFilterCondition>
      modelIdEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'modelId',
        value: value,
      ));
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QAfterFilterCondition>
      modelIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'modelId',
        value: value,
      ));
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QAfterFilterCondition>
      modelIdLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'modelId',
        value: value,
      ));
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QAfterFilterCondition>
      modelIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'modelId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QAfterFilterCondition>
      originalTitleEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'originalTitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QAfterFilterCondition>
      originalTitleGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'originalTitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QAfterFilterCondition>
      originalTitleLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'originalTitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QAfterFilterCondition>
      originalTitleBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'originalTitle',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QAfterFilterCondition>
      originalTitleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'originalTitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QAfterFilterCondition>
      originalTitleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'originalTitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QAfterFilterCondition>
      originalTitleContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'originalTitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QAfterFilterCondition>
      originalTitleMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'originalTitle',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QAfterFilterCondition>
      originalTitleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'originalTitle',
        value: '',
      ));
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QAfterFilterCondition>
      originalTitleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'originalTitle',
        value: '',
      ));
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QAfterFilterCondition>
      overviewEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'overview',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QAfterFilterCondition>
      overviewGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'overview',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QAfterFilterCondition>
      overviewLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'overview',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QAfterFilterCondition>
      overviewBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'overview',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QAfterFilterCondition>
      overviewStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'overview',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QAfterFilterCondition>
      overviewEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'overview',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QAfterFilterCondition>
      overviewContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'overview',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QAfterFilterCondition>
      overviewMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'overview',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QAfterFilterCondition>
      overviewIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'overview',
        value: '',
      ));
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QAfterFilterCondition>
      overviewIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'overview',
        value: '',
      ));
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QAfterFilterCondition>
      posterPathEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'posterPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QAfterFilterCondition>
      posterPathGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'posterPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QAfterFilterCondition>
      posterPathLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'posterPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QAfterFilterCondition>
      posterPathBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'posterPath',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QAfterFilterCondition>
      posterPathStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'posterPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QAfterFilterCondition>
      posterPathEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'posterPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QAfterFilterCondition>
      posterPathContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'posterPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QAfterFilterCondition>
      posterPathMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'posterPath',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QAfterFilterCondition>
      posterPathIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'posterPath',
        value: '',
      ));
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QAfterFilterCondition>
      posterPathIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'posterPath',
        value: '',
      ));
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QAfterFilterCondition>
      releaseDateEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'releaseDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QAfterFilterCondition>
      releaseDateGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'releaseDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QAfterFilterCondition>
      releaseDateLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'releaseDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QAfterFilterCondition>
      releaseDateBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'releaseDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QAfterFilterCondition>
      releaseDateStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'releaseDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QAfterFilterCondition>
      releaseDateEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'releaseDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QAfterFilterCondition>
      releaseDateContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'releaseDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QAfterFilterCondition>
      releaseDateMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'releaseDate',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QAfterFilterCondition>
      releaseDateIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'releaseDate',
        value: '',
      ));
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QAfterFilterCondition>
      releaseDateIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'releaseDate',
        value: '',
      ));
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QAfterFilterCondition>
      titleEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QAfterFilterCondition>
      titleGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QAfterFilterCondition>
      titleLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QAfterFilterCondition>
      titleBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'title',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QAfterFilterCondition>
      titleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QAfterFilterCondition>
      titleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QAfterFilterCondition>
      titleContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QAfterFilterCondition>
      titleMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'title',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QAfterFilterCondition>
      titleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: '',
      ));
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QAfterFilterCondition>
      titleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'title',
        value: '',
      ));
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QAfterFilterCondition>
      voteAverageEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'voteAverage',
        value: value,
      ));
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QAfterFilterCondition>
      voteAverageGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'voteAverage',
        value: value,
      ));
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QAfterFilterCondition>
      voteAverageLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'voteAverage',
        value: value,
      ));
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QAfterFilterCondition>
      voteAverageBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'voteAverage',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension MovieCacheModelQueryObject
    on QueryBuilder<MovieCacheModel, MovieCacheModel, QFilterCondition> {}

extension MovieCacheModelQueryLinks
    on QueryBuilder<MovieCacheModel, MovieCacheModel, QFilterCondition> {}

extension MovieCacheModelQuerySortBy
    on QueryBuilder<MovieCacheModel, MovieCacheModel, QSortBy> {
  QueryBuilder<MovieCacheModel, MovieCacheModel, QAfterSortBy>
      sortByBackDropPath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'backDropPath', Sort.asc);
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QAfterSortBy>
      sortByBackDropPathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'backDropPath', Sort.desc);
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QAfterSortBy> sortByModelId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'modelId', Sort.asc);
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QAfterSortBy>
      sortByModelIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'modelId', Sort.desc);
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QAfterSortBy>
      sortByOriginalTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'originalTitle', Sort.asc);
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QAfterSortBy>
      sortByOriginalTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'originalTitle', Sort.desc);
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QAfterSortBy>
      sortByOverview() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'overview', Sort.asc);
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QAfterSortBy>
      sortByOverviewDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'overview', Sort.desc);
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QAfterSortBy>
      sortByPosterPath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'posterPath', Sort.asc);
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QAfterSortBy>
      sortByPosterPathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'posterPath', Sort.desc);
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QAfterSortBy>
      sortByReleaseDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'releaseDate', Sort.asc);
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QAfterSortBy>
      sortByReleaseDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'releaseDate', Sort.desc);
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QAfterSortBy> sortByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QAfterSortBy>
      sortByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QAfterSortBy>
      sortByVoteAverage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'voteAverage', Sort.asc);
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QAfterSortBy>
      sortByVoteAverageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'voteAverage', Sort.desc);
    });
  }
}

extension MovieCacheModelQuerySortThenBy
    on QueryBuilder<MovieCacheModel, MovieCacheModel, QSortThenBy> {
  QueryBuilder<MovieCacheModel, MovieCacheModel, QAfterSortBy>
      thenByBackDropPath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'backDropPath', Sort.asc);
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QAfterSortBy>
      thenByBackDropPathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'backDropPath', Sort.desc);
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QAfterSortBy> thenByModelId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'modelId', Sort.asc);
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QAfterSortBy>
      thenByModelIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'modelId', Sort.desc);
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QAfterSortBy>
      thenByOriginalTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'originalTitle', Sort.asc);
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QAfterSortBy>
      thenByOriginalTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'originalTitle', Sort.desc);
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QAfterSortBy>
      thenByOverview() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'overview', Sort.asc);
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QAfterSortBy>
      thenByOverviewDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'overview', Sort.desc);
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QAfterSortBy>
      thenByPosterPath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'posterPath', Sort.asc);
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QAfterSortBy>
      thenByPosterPathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'posterPath', Sort.desc);
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QAfterSortBy>
      thenByReleaseDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'releaseDate', Sort.asc);
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QAfterSortBy>
      thenByReleaseDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'releaseDate', Sort.desc);
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QAfterSortBy> thenByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QAfterSortBy>
      thenByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QAfterSortBy>
      thenByVoteAverage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'voteAverage', Sort.asc);
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QAfterSortBy>
      thenByVoteAverageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'voteAverage', Sort.desc);
    });
  }
}

extension MovieCacheModelQueryWhereDistinct
    on QueryBuilder<MovieCacheModel, MovieCacheModel, QDistinct> {
  QueryBuilder<MovieCacheModel, MovieCacheModel, QDistinct>
      distinctByBackDropPath({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'backDropPath', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QDistinct>
      distinctByModelId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'modelId');
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QDistinct>
      distinctByOriginalTitle({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'originalTitle',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QDistinct> distinctByOverview(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'overview', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QDistinct>
      distinctByPosterPath({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'posterPath', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QDistinct>
      distinctByReleaseDate({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'releaseDate', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QDistinct> distinctByTitle(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'title', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MovieCacheModel, MovieCacheModel, QDistinct>
      distinctByVoteAverage() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'voteAverage');
    });
  }
}

extension MovieCacheModelQueryProperty
    on QueryBuilder<MovieCacheModel, MovieCacheModel, QQueryProperty> {
  QueryBuilder<MovieCacheModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<MovieCacheModel, String, QQueryOperations>
      backDropPathProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'backDropPath');
    });
  }

  QueryBuilder<MovieCacheModel, int, QQueryOperations> modelIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'modelId');
    });
  }

  QueryBuilder<MovieCacheModel, String, QQueryOperations>
      originalTitleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'originalTitle');
    });
  }

  QueryBuilder<MovieCacheModel, String, QQueryOperations> overviewProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'overview');
    });
  }

  QueryBuilder<MovieCacheModel, String, QQueryOperations> posterPathProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'posterPath');
    });
  }

  QueryBuilder<MovieCacheModel, String, QQueryOperations>
      releaseDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'releaseDate');
    });
  }

  QueryBuilder<MovieCacheModel, String, QQueryOperations> titleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'title');
    });
  }

  QueryBuilder<MovieCacheModel, int, QQueryOperations> voteAverageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'voteAverage');
    });
  }
}

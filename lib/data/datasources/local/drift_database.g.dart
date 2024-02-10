// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drift_database.dart';

// ignore_for_file: type=lint
class $MovieTableTable extends MovieTable
    with TableInfo<$MovieTableTable, MovieEntity> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MovieTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMovieMeta =
      const VerificationMeta('idMovie');
  @override
  late final GeneratedColumn<int> idMovie = GeneratedColumn<int>(
      'id', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _adultMeta = const VerificationMeta('adult');
  @override
  late final GeneratedColumn<bool> adult = GeneratedColumn<bool>(
      'adult', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("adult" IN (0, 1))'));
  static const VerificationMeta _backdropPathMeta =
      const VerificationMeta('backdropPath');
  @override
  late final GeneratedColumn<String> backdropPath = GeneratedColumn<String>(
      'backdrop_path', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _posterPathMeta =
      const VerificationMeta('posterPath');
  @override
  late final GeneratedColumn<String> posterPath = GeneratedColumn<String>(
      'poster_path', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _originalLanguageMeta =
      const VerificationMeta('originalLanguage');
  @override
  late final GeneratedColumn<String> originalLanguage = GeneratedColumn<String>(
      'original_language', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _originalTitleMeta =
      const VerificationMeta('originalTitle');
  @override
  late final GeneratedColumn<String> originalTitle = GeneratedColumn<String>(
      'original_title', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _releaseDateMeta =
      const VerificationMeta('releaseDate');
  @override
  late final GeneratedColumn<DateTime> releaseDate = GeneratedColumn<DateTime>(
      'release_date', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _overviewMeta =
      const VerificationMeta('overview');
  @override
  late final GeneratedColumn<String> overview = GeneratedColumn<String>(
      'overview', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _videoMeta = const VerificationMeta('video');
  @override
  late final GeneratedColumn<bool> video = GeneratedColumn<bool>(
      'video', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("video" IN (0, 1))'));
  static const VerificationMeta _popularityMeta =
      const VerificationMeta('popularity');
  @override
  late final GeneratedColumn<double> popularity = GeneratedColumn<double>(
      'popularity', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _voteAverageMeta =
      const VerificationMeta('voteAverage');
  @override
  late final GeneratedColumn<double> voteAverage = GeneratedColumn<double>(
      'vote_average', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _voteCountMeta =
      const VerificationMeta('voteCount');
  @override
  late final GeneratedColumn<int> voteCount = GeneratedColumn<int>(
      'vote_count', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        idMovie,
        adult,
        backdropPath,
        posterPath,
        originalLanguage,
        originalTitle,
        releaseDate,
        overview,
        title,
        video,
        popularity,
        voteAverage,
        voteCount
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'movie';
  @override
  VerificationContext validateIntegrity(Insertable<MovieEntity> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMovieMeta,
          idMovie.isAcceptableOrUnknown(data['id']!, _idMovieMeta));
    }
    if (data.containsKey('adult')) {
      context.handle(
          _adultMeta, adult.isAcceptableOrUnknown(data['adult']!, _adultMeta));
    }
    if (data.containsKey('backdrop_path')) {
      context.handle(
          _backdropPathMeta,
          backdropPath.isAcceptableOrUnknown(
              data['backdrop_path']!, _backdropPathMeta));
    }
    if (data.containsKey('poster_path')) {
      context.handle(
          _posterPathMeta,
          posterPath.isAcceptableOrUnknown(
              data['poster_path']!, _posterPathMeta));
    }
    if (data.containsKey('original_language')) {
      context.handle(
          _originalLanguageMeta,
          originalLanguage.isAcceptableOrUnknown(
              data['original_language']!, _originalLanguageMeta));
    }
    if (data.containsKey('original_title')) {
      context.handle(
          _originalTitleMeta,
          originalTitle.isAcceptableOrUnknown(
              data['original_title']!, _originalTitleMeta));
    }
    if (data.containsKey('release_date')) {
      context.handle(
          _releaseDateMeta,
          releaseDate.isAcceptableOrUnknown(
              data['release_date']!, _releaseDateMeta));
    }
    if (data.containsKey('overview')) {
      context.handle(_overviewMeta,
          overview.isAcceptableOrUnknown(data['overview']!, _overviewMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    }
    if (data.containsKey('video')) {
      context.handle(
          _videoMeta, video.isAcceptableOrUnknown(data['video']!, _videoMeta));
    }
    if (data.containsKey('popularity')) {
      context.handle(
          _popularityMeta,
          popularity.isAcceptableOrUnknown(
              data['popularity']!, _popularityMeta));
    }
    if (data.containsKey('vote_average')) {
      context.handle(
          _voteAverageMeta,
          voteAverage.isAcceptableOrUnknown(
              data['vote_average']!, _voteAverageMeta));
    }
    if (data.containsKey('vote_count')) {
      context.handle(_voteCountMeta,
          voteCount.isAcceptableOrUnknown(data['vote_count']!, _voteCountMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {idMovie};
  @override
  MovieEntity map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return MovieEntity(
      idMovie: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id']),
      adult: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}adult']),
      backdropPath: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}backdrop_path']),
      posterPath: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}poster_path']),
      originalLanguage: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}original_language']),
      originalTitle: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}original_title']),
      releaseDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}release_date']),
      overview: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}overview']),
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title']),
      video: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}video']),
      popularity: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}popularity']),
      voteAverage: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}vote_average']),
      voteCount: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}vote_count']),
    );
  }

  @override
  $MovieTableTable createAlias(String alias) {
    return $MovieTableTable(attachedDatabase, alias);
  }
}

class MovieEntity extends DataClass implements Insertable<MovieEntity> {
  final int? idMovie;
  final bool? adult;
  final String? backdropPath;
  final String? posterPath;
  final String? originalLanguage;
  final String? originalTitle;
  final DateTime? releaseDate;
  final String? overview;
  final String? title;
  final bool? video;
  final double? popularity;
  final double? voteAverage;
  final int? voteCount;
  const MovieEntity(
      {this.idMovie,
      this.adult,
      this.backdropPath,
      this.posterPath,
      this.originalLanguage,
      this.originalTitle,
      this.releaseDate,
      this.overview,
      this.title,
      this.video,
      this.popularity,
      this.voteAverage,
      this.voteCount});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || idMovie != null) {
      map['id'] = Variable<int>(idMovie);
    }
    if (!nullToAbsent || adult != null) {
      map['adult'] = Variable<bool>(adult);
    }
    if (!nullToAbsent || backdropPath != null) {
      map['backdrop_path'] = Variable<String>(backdropPath);
    }
    if (!nullToAbsent || posterPath != null) {
      map['poster_path'] = Variable<String>(posterPath);
    }
    if (!nullToAbsent || originalLanguage != null) {
      map['original_language'] = Variable<String>(originalLanguage);
    }
    if (!nullToAbsent || originalTitle != null) {
      map['original_title'] = Variable<String>(originalTitle);
    }
    if (!nullToAbsent || releaseDate != null) {
      map['release_date'] = Variable<DateTime>(releaseDate);
    }
    if (!nullToAbsent || overview != null) {
      map['overview'] = Variable<String>(overview);
    }
    if (!nullToAbsent || title != null) {
      map['title'] = Variable<String>(title);
    }
    if (!nullToAbsent || video != null) {
      map['video'] = Variable<bool>(video);
    }
    if (!nullToAbsent || popularity != null) {
      map['popularity'] = Variable<double>(popularity);
    }
    if (!nullToAbsent || voteAverage != null) {
      map['vote_average'] = Variable<double>(voteAverage);
    }
    if (!nullToAbsent || voteCount != null) {
      map['vote_count'] = Variable<int>(voteCount);
    }
    return map;
  }

  MovieTableCompanion toCompanion(bool nullToAbsent) {
    return MovieTableCompanion(
      idMovie: idMovie == null && nullToAbsent
          ? const Value.absent()
          : Value(idMovie),
      adult:
          adult == null && nullToAbsent ? const Value.absent() : Value(adult),
      backdropPath: backdropPath == null && nullToAbsent
          ? const Value.absent()
          : Value(backdropPath),
      posterPath: posterPath == null && nullToAbsent
          ? const Value.absent()
          : Value(posterPath),
      originalLanguage: originalLanguage == null && nullToAbsent
          ? const Value.absent()
          : Value(originalLanguage),
      originalTitle: originalTitle == null && nullToAbsent
          ? const Value.absent()
          : Value(originalTitle),
      releaseDate: releaseDate == null && nullToAbsent
          ? const Value.absent()
          : Value(releaseDate),
      overview: overview == null && nullToAbsent
          ? const Value.absent()
          : Value(overview),
      title:
          title == null && nullToAbsent ? const Value.absent() : Value(title),
      video:
          video == null && nullToAbsent ? const Value.absent() : Value(video),
      popularity: popularity == null && nullToAbsent
          ? const Value.absent()
          : Value(popularity),
      voteAverage: voteAverage == null && nullToAbsent
          ? const Value.absent()
          : Value(voteAverage),
      voteCount: voteCount == null && nullToAbsent
          ? const Value.absent()
          : Value(voteCount),
    );
  }

  factory MovieEntity.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return MovieEntity(
      idMovie: serializer.fromJson<int?>(json['idMovie']),
      adult: serializer.fromJson<bool?>(json['adult']),
      backdropPath: serializer.fromJson<String?>(json['backdropPath']),
      posterPath: serializer.fromJson<String?>(json['posterPath']),
      originalLanguage: serializer.fromJson<String?>(json['originalLanguage']),
      originalTitle: serializer.fromJson<String?>(json['originalTitle']),
      releaseDate: serializer.fromJson<DateTime?>(json['releaseDate']),
      overview: serializer.fromJson<String?>(json['overview']),
      title: serializer.fromJson<String?>(json['title']),
      video: serializer.fromJson<bool?>(json['video']),
      popularity: serializer.fromJson<double?>(json['popularity']),
      voteAverage: serializer.fromJson<double?>(json['voteAverage']),
      voteCount: serializer.fromJson<int?>(json['voteCount']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'idMovie': serializer.toJson<int?>(idMovie),
      'adult': serializer.toJson<bool?>(adult),
      'backdropPath': serializer.toJson<String?>(backdropPath),
      'posterPath': serializer.toJson<String?>(posterPath),
      'originalLanguage': serializer.toJson<String?>(originalLanguage),
      'originalTitle': serializer.toJson<String?>(originalTitle),
      'releaseDate': serializer.toJson<DateTime?>(releaseDate),
      'overview': serializer.toJson<String?>(overview),
      'title': serializer.toJson<String?>(title),
      'video': serializer.toJson<bool?>(video),
      'popularity': serializer.toJson<double?>(popularity),
      'voteAverage': serializer.toJson<double?>(voteAverage),
      'voteCount': serializer.toJson<int?>(voteCount),
    };
  }

  MovieEntity copyWith(
          {Value<int?> idMovie = const Value.absent(),
          Value<bool?> adult = const Value.absent(),
          Value<String?> backdropPath = const Value.absent(),
          Value<String?> posterPath = const Value.absent(),
          Value<String?> originalLanguage = const Value.absent(),
          Value<String?> originalTitle = const Value.absent(),
          Value<DateTime?> releaseDate = const Value.absent(),
          Value<String?> overview = const Value.absent(),
          Value<String?> title = const Value.absent(),
          Value<bool?> video = const Value.absent(),
          Value<double?> popularity = const Value.absent(),
          Value<double?> voteAverage = const Value.absent(),
          Value<int?> voteCount = const Value.absent()}) =>
      MovieEntity(
        idMovie: idMovie.present ? idMovie.value : this.idMovie,
        adult: adult.present ? adult.value : this.adult,
        backdropPath:
            backdropPath.present ? backdropPath.value : this.backdropPath,
        posterPath: posterPath.present ? posterPath.value : this.posterPath,
        originalLanguage: originalLanguage.present
            ? originalLanguage.value
            : this.originalLanguage,
        originalTitle:
            originalTitle.present ? originalTitle.value : this.originalTitle,
        releaseDate: releaseDate.present ? releaseDate.value : this.releaseDate,
        overview: overview.present ? overview.value : this.overview,
        title: title.present ? title.value : this.title,
        video: video.present ? video.value : this.video,
        popularity: popularity.present ? popularity.value : this.popularity,
        voteAverage: voteAverage.present ? voteAverage.value : this.voteAverage,
        voteCount: voteCount.present ? voteCount.value : this.voteCount,
      );
  @override
  String toString() {
    return (StringBuffer('MovieEntity(')
          ..write('idMovie: $idMovie, ')
          ..write('adult: $adult, ')
          ..write('backdropPath: $backdropPath, ')
          ..write('posterPath: $posterPath, ')
          ..write('originalLanguage: $originalLanguage, ')
          ..write('originalTitle: $originalTitle, ')
          ..write('releaseDate: $releaseDate, ')
          ..write('overview: $overview, ')
          ..write('title: $title, ')
          ..write('video: $video, ')
          ..write('popularity: $popularity, ')
          ..write('voteAverage: $voteAverage, ')
          ..write('voteCount: $voteCount')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      idMovie,
      adult,
      backdropPath,
      posterPath,
      originalLanguage,
      originalTitle,
      releaseDate,
      overview,
      title,
      video,
      popularity,
      voteAverage,
      voteCount);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MovieEntity &&
          other.idMovie == this.idMovie &&
          other.adult == this.adult &&
          other.backdropPath == this.backdropPath &&
          other.posterPath == this.posterPath &&
          other.originalLanguage == this.originalLanguage &&
          other.originalTitle == this.originalTitle &&
          other.releaseDate == this.releaseDate &&
          other.overview == this.overview &&
          other.title == this.title &&
          other.video == this.video &&
          other.popularity == this.popularity &&
          other.voteAverage == this.voteAverage &&
          other.voteCount == this.voteCount);
}

class MovieTableCompanion extends UpdateCompanion<MovieEntity> {
  final Value<int?> idMovie;
  final Value<bool?> adult;
  final Value<String?> backdropPath;
  final Value<String?> posterPath;
  final Value<String?> originalLanguage;
  final Value<String?> originalTitle;
  final Value<DateTime?> releaseDate;
  final Value<String?> overview;
  final Value<String?> title;
  final Value<bool?> video;
  final Value<double?> popularity;
  final Value<double?> voteAverage;
  final Value<int?> voteCount;
  const MovieTableCompanion({
    this.idMovie = const Value.absent(),
    this.adult = const Value.absent(),
    this.backdropPath = const Value.absent(),
    this.posterPath = const Value.absent(),
    this.originalLanguage = const Value.absent(),
    this.originalTitle = const Value.absent(),
    this.releaseDate = const Value.absent(),
    this.overview = const Value.absent(),
    this.title = const Value.absent(),
    this.video = const Value.absent(),
    this.popularity = const Value.absent(),
    this.voteAverage = const Value.absent(),
    this.voteCount = const Value.absent(),
  });
  MovieTableCompanion.insert({
    this.idMovie = const Value.absent(),
    this.adult = const Value.absent(),
    this.backdropPath = const Value.absent(),
    this.posterPath = const Value.absent(),
    this.originalLanguage = const Value.absent(),
    this.originalTitle = const Value.absent(),
    this.releaseDate = const Value.absent(),
    this.overview = const Value.absent(),
    this.title = const Value.absent(),
    this.video = const Value.absent(),
    this.popularity = const Value.absent(),
    this.voteAverage = const Value.absent(),
    this.voteCount = const Value.absent(),
  });
  static Insertable<MovieEntity> custom({
    Expression<int>? idMovie,
    Expression<bool>? adult,
    Expression<String>? backdropPath,
    Expression<String>? posterPath,
    Expression<String>? originalLanguage,
    Expression<String>? originalTitle,
    Expression<DateTime>? releaseDate,
    Expression<String>? overview,
    Expression<String>? title,
    Expression<bool>? video,
    Expression<double>? popularity,
    Expression<double>? voteAverage,
    Expression<int>? voteCount,
  }) {
    return RawValuesInsertable({
      if (idMovie != null) 'id': idMovie,
      if (adult != null) 'adult': adult,
      if (backdropPath != null) 'backdrop_path': backdropPath,
      if (posterPath != null) 'poster_path': posterPath,
      if (originalLanguage != null) 'original_language': originalLanguage,
      if (originalTitle != null) 'original_title': originalTitle,
      if (releaseDate != null) 'release_date': releaseDate,
      if (overview != null) 'overview': overview,
      if (title != null) 'title': title,
      if (video != null) 'video': video,
      if (popularity != null) 'popularity': popularity,
      if (voteAverage != null) 'vote_average': voteAverage,
      if (voteCount != null) 'vote_count': voteCount,
    });
  }

  MovieTableCompanion copyWith(
      {Value<int?>? idMovie,
      Value<bool?>? adult,
      Value<String?>? backdropPath,
      Value<String?>? posterPath,
      Value<String?>? originalLanguage,
      Value<String?>? originalTitle,
      Value<DateTime?>? releaseDate,
      Value<String?>? overview,
      Value<String?>? title,
      Value<bool?>? video,
      Value<double?>? popularity,
      Value<double?>? voteAverage,
      Value<int?>? voteCount}) {
    return MovieTableCompanion(
      idMovie: idMovie ?? this.idMovie,
      adult: adult ?? this.adult,
      backdropPath: backdropPath ?? this.backdropPath,
      posterPath: posterPath ?? this.posterPath,
      originalLanguage: originalLanguage ?? this.originalLanguage,
      originalTitle: originalTitle ?? this.originalTitle,
      releaseDate: releaseDate ?? this.releaseDate,
      overview: overview ?? this.overview,
      title: title ?? this.title,
      video: video ?? this.video,
      popularity: popularity ?? this.popularity,
      voteAverage: voteAverage ?? this.voteAverage,
      voteCount: voteCount ?? this.voteCount,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (idMovie.present) {
      map['id'] = Variable<int>(idMovie.value);
    }
    if (adult.present) {
      map['adult'] = Variable<bool>(adult.value);
    }
    if (backdropPath.present) {
      map['backdrop_path'] = Variable<String>(backdropPath.value);
    }
    if (posterPath.present) {
      map['poster_path'] = Variable<String>(posterPath.value);
    }
    if (originalLanguage.present) {
      map['original_language'] = Variable<String>(originalLanguage.value);
    }
    if (originalTitle.present) {
      map['original_title'] = Variable<String>(originalTitle.value);
    }
    if (releaseDate.present) {
      map['release_date'] = Variable<DateTime>(releaseDate.value);
    }
    if (overview.present) {
      map['overview'] = Variable<String>(overview.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (video.present) {
      map['video'] = Variable<bool>(video.value);
    }
    if (popularity.present) {
      map['popularity'] = Variable<double>(popularity.value);
    }
    if (voteAverage.present) {
      map['vote_average'] = Variable<double>(voteAverage.value);
    }
    if (voteCount.present) {
      map['vote_count'] = Variable<int>(voteCount.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MovieTableCompanion(')
          ..write('idMovie: $idMovie, ')
          ..write('adult: $adult, ')
          ..write('backdropPath: $backdropPath, ')
          ..write('posterPath: $posterPath, ')
          ..write('originalLanguage: $originalLanguage, ')
          ..write('originalTitle: $originalTitle, ')
          ..write('releaseDate: $releaseDate, ')
          ..write('overview: $overview, ')
          ..write('title: $title, ')
          ..write('video: $video, ')
          ..write('popularity: $popularity, ')
          ..write('voteAverage: $voteAverage, ')
          ..write('voteCount: $voteCount')
          ..write(')'))
        .toString();
  }
}

class $GenreTableTable extends GenreTable
    with TableInfo<$GenreTableTable, GenreEntity> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $GenreTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idGenreMeta =
      const VerificationMeta('idGenre');
  @override
  late final GeneratedColumn<int> idGenre = GeneratedColumn<int>(
      'id', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _idMovieMeta =
      const VerificationMeta('idMovie');
  @override
  late final GeneratedColumn<int> idMovie = GeneratedColumn<int>(
      'id_movie', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _genreMeta = const VerificationMeta('genre');
  @override
  late final GeneratedColumn<String> genre = GeneratedColumn<String>(
      'genre', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [idGenre, idMovie, genre];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'genre';
  @override
  VerificationContext validateIntegrity(Insertable<GenreEntity> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idGenreMeta,
          idGenre.isAcceptableOrUnknown(data['id']!, _idGenreMeta));
    }
    if (data.containsKey('id_movie')) {
      context.handle(_idMovieMeta,
          idMovie.isAcceptableOrUnknown(data['id_movie']!, _idMovieMeta));
    }
    if (data.containsKey('genre')) {
      context.handle(
          _genreMeta, genre.isAcceptableOrUnknown(data['genre']!, _genreMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {idGenre};
  @override
  GenreEntity map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return GenreEntity(
      idGenre: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id']),
      idMovie: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id_movie']),
      genre: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}genre']),
    );
  }

  @override
  $GenreTableTable createAlias(String alias) {
    return $GenreTableTable(attachedDatabase, alias);
  }
}

class GenreEntity extends DataClass implements Insertable<GenreEntity> {
  final int? idGenre;
  final int? idMovie;
  final String? genre;
  const GenreEntity({this.idGenre, this.idMovie, this.genre});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || idGenre != null) {
      map['id'] = Variable<int>(idGenre);
    }
    if (!nullToAbsent || idMovie != null) {
      map['id_movie'] = Variable<int>(idMovie);
    }
    if (!nullToAbsent || genre != null) {
      map['genre'] = Variable<String>(genre);
    }
    return map;
  }

  GenreTableCompanion toCompanion(bool nullToAbsent) {
    return GenreTableCompanion(
      idGenre: idGenre == null && nullToAbsent
          ? const Value.absent()
          : Value(idGenre),
      idMovie: idMovie == null && nullToAbsent
          ? const Value.absent()
          : Value(idMovie),
      genre:
          genre == null && nullToAbsent ? const Value.absent() : Value(genre),
    );
  }

  factory GenreEntity.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return GenreEntity(
      idGenre: serializer.fromJson<int?>(json['idGenre']),
      idMovie: serializer.fromJson<int?>(json['idMovie']),
      genre: serializer.fromJson<String?>(json['genre']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'idGenre': serializer.toJson<int?>(idGenre),
      'idMovie': serializer.toJson<int?>(idMovie),
      'genre': serializer.toJson<String?>(genre),
    };
  }

  GenreEntity copyWith(
          {Value<int?> idGenre = const Value.absent(),
          Value<int?> idMovie = const Value.absent(),
          Value<String?> genre = const Value.absent()}) =>
      GenreEntity(
        idGenre: idGenre.present ? idGenre.value : this.idGenre,
        idMovie: idMovie.present ? idMovie.value : this.idMovie,
        genre: genre.present ? genre.value : this.genre,
      );
  @override
  String toString() {
    return (StringBuffer('GenreEntity(')
          ..write('idGenre: $idGenre, ')
          ..write('idMovie: $idMovie, ')
          ..write('genre: $genre')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(idGenre, idMovie, genre);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is GenreEntity &&
          other.idGenre == this.idGenre &&
          other.idMovie == this.idMovie &&
          other.genre == this.genre);
}

class GenreTableCompanion extends UpdateCompanion<GenreEntity> {
  final Value<int?> idGenre;
  final Value<int?> idMovie;
  final Value<String?> genre;
  const GenreTableCompanion({
    this.idGenre = const Value.absent(),
    this.idMovie = const Value.absent(),
    this.genre = const Value.absent(),
  });
  GenreTableCompanion.insert({
    this.idGenre = const Value.absent(),
    this.idMovie = const Value.absent(),
    this.genre = const Value.absent(),
  });
  static Insertable<GenreEntity> custom({
    Expression<int>? idGenre,
    Expression<int>? idMovie,
    Expression<String>? genre,
  }) {
    return RawValuesInsertable({
      if (idGenre != null) 'id': idGenre,
      if (idMovie != null) 'id_movie': idMovie,
      if (genre != null) 'genre': genre,
    });
  }

  GenreTableCompanion copyWith(
      {Value<int?>? idGenre, Value<int?>? idMovie, Value<String?>? genre}) {
    return GenreTableCompanion(
      idGenre: idGenre ?? this.idGenre,
      idMovie: idMovie ?? this.idMovie,
      genre: genre ?? this.genre,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (idGenre.present) {
      map['id'] = Variable<int>(idGenre.value);
    }
    if (idMovie.present) {
      map['id_movie'] = Variable<int>(idMovie.value);
    }
    if (genre.present) {
      map['genre'] = Variable<String>(genre.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('GenreTableCompanion(')
          ..write('idGenre: $idGenre, ')
          ..write('idMovie: $idMovie, ')
          ..write('genre: $genre')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  late final $MovieTableTable movieTable = $MovieTableTable(this);
  late final $GenreTableTable genreTable = $GenreTableTable(this);
  late final MoviesDao moviesDao = MoviesDao(this as AppDatabase);
  late final GenresDao genresDao = GenresDao(this as AppDatabase);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [movieTable, genreTable];
}

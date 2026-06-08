// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'eleve.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetEleveCollection on Isar {
  IsarCollection<Eleve> get eleves => this.collection();
}

const EleveSchema = CollectionSchema(
  name: r'Eleve',
  id: -8290563367235785141,
  properties: {
    r'adresse': PropertySchema(
      id: 0,
      name: r'adresse',
      type: IsarType.string,
    ),
    r'dateNaissance': PropertySchema(
      id: 1,
      name: r'dateNaissance',
      type: IsarType.dateTime,
    ),
    r'ecoleId': PropertySchema(
      id: 2,
      name: r'ecoleId',
      type: IsarType.long,
    ),
    r'estActif': PropertySchema(
      id: 3,
      name: r'estActif',
      type: IsarType.bool,
    ),
    r'isSynced': PropertySchema(
      id: 4,
      name: r'isSynced',
      type: IsarType.bool,
    ),
    r'lieuNaissance': PropertySchema(
      id: 5,
      name: r'lieuNaissance',
      type: IsarType.string,
    ),
    r'matricule': PropertySchema(
      id: 6,
      name: r'matricule',
      type: IsarType.string,
    ),
    r'nom': PropertySchema(
      id: 7,
      name: r'nom',
      type: IsarType.string,
    ),
    r'nomParent': PropertySchema(
      id: 8,
      name: r'nomParent',
      type: IsarType.string,
    ),
    r'prenom': PropertySchema(
      id: 9,
      name: r'prenom',
      type: IsarType.string,
    ),
    r'sexe': PropertySchema(
      id: 10,
      name: r'sexe',
      type: IsarType.string,
    ),
    r'telephoneParent': PropertySchema(
      id: 11,
      name: r'telephoneParent',
      type: IsarType.string,
    ),
    r'updatedAt': PropertySchema(
      id: 12,
      name: r'updatedAt',
      type: IsarType.dateTime,
    ),
    r'uuid': PropertySchema(
      id: 13,
      name: r'uuid',
      type: IsarType.string,
    )
  },
  estimateSize: _eleveEstimateSize,
  serialize: _eleveSerialize,
  deserialize: _eleveDeserialize,
  deserializeProp: _eleveDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _eleveGetId,
  getLinks: _eleveGetLinks,
  attach: _eleveAttach,
  version: '3.1.0+1',
);

int _eleveEstimateSize(
  Eleve object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.adresse;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.lieuNaissance;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.matricule.length * 3;
  bytesCount += 3 + object.nom.length * 3;
  {
    final value = object.nomParent;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.prenom.length * 3;
  {
    final value = object.sexe;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.telephoneParent;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.uuid.length * 3;
  return bytesCount;
}

void _eleveSerialize(
  Eleve object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.adresse);
  writer.writeDateTime(offsets[1], object.dateNaissance);
  writer.writeLong(offsets[2], object.ecoleId);
  writer.writeBool(offsets[3], object.estActif);
  writer.writeBool(offsets[4], object.isSynced);
  writer.writeString(offsets[5], object.lieuNaissance);
  writer.writeString(offsets[6], object.matricule);
  writer.writeString(offsets[7], object.nom);
  writer.writeString(offsets[8], object.nomParent);
  writer.writeString(offsets[9], object.prenom);
  writer.writeString(offsets[10], object.sexe);
  writer.writeString(offsets[11], object.telephoneParent);
  writer.writeDateTime(offsets[12], object.updatedAt);
  writer.writeString(offsets[13], object.uuid);
}

Eleve _eleveDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Eleve();
  object.adresse = reader.readStringOrNull(offsets[0]);
  object.dateNaissance = reader.readDateTimeOrNull(offsets[1]);
  object.ecoleId = reader.readLong(offsets[2]);
  object.estActif = reader.readBool(offsets[3]);
  object.id = id;
  object.isSynced = reader.readBool(offsets[4]);
  object.lieuNaissance = reader.readStringOrNull(offsets[5]);
  object.matricule = reader.readString(offsets[6]);
  object.nom = reader.readString(offsets[7]);
  object.nomParent = reader.readStringOrNull(offsets[8]);
  object.prenom = reader.readString(offsets[9]);
  object.sexe = reader.readStringOrNull(offsets[10]);
  object.telephoneParent = reader.readStringOrNull(offsets[11]);
  object.updatedAt = reader.readDateTime(offsets[12]);
  object.uuid = reader.readString(offsets[13]);
  return object;
}

P _eleveDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 2:
      return (reader.readLong(offset)) as P;
    case 3:
      return (reader.readBool(offset)) as P;
    case 4:
      return (reader.readBool(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readString(offset)) as P;
    case 7:
      return (reader.readString(offset)) as P;
    case 8:
      return (reader.readStringOrNull(offset)) as P;
    case 9:
      return (reader.readString(offset)) as P;
    case 10:
      return (reader.readStringOrNull(offset)) as P;
    case 11:
      return (reader.readStringOrNull(offset)) as P;
    case 12:
      return (reader.readDateTime(offset)) as P;
    case 13:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _eleveGetId(Eleve object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _eleveGetLinks(Eleve object) {
  return [];
}

void _eleveAttach(IsarCollection<dynamic> col, Id id, Eleve object) {
  object.id = id;
}

extension EleveQueryWhereSort on QueryBuilder<Eleve, Eleve, QWhere> {
  QueryBuilder<Eleve, Eleve, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension EleveQueryWhere on QueryBuilder<Eleve, Eleve, QWhereClause> {
  QueryBuilder<Eleve, Eleve, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Eleve, Eleve, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterWhereClause> idBetween(
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

extension EleveQueryFilter on QueryBuilder<Eleve, Eleve, QFilterCondition> {
  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> adresseIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'adresse',
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> adresseIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'adresse',
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> adresseEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'adresse',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> adresseGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'adresse',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> adresseLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'adresse',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> adresseBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'adresse',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> adresseStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'adresse',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> adresseEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'adresse',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> adresseContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'adresse',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> adresseMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'adresse',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> adresseIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'adresse',
        value: '',
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> adresseIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'adresse',
        value: '',
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> dateNaissanceIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'dateNaissance',
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> dateNaissanceIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'dateNaissance',
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> dateNaissanceEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dateNaissance',
        value: value,
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> dateNaissanceGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dateNaissance',
        value: value,
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> dateNaissanceLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dateNaissance',
        value: value,
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> dateNaissanceBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dateNaissance',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> ecoleIdEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ecoleId',
        value: value,
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> ecoleIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ecoleId',
        value: value,
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> ecoleIdLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ecoleId',
        value: value,
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> ecoleIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ecoleId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> estActifEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'estActif',
        value: value,
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> isSyncedEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isSynced',
        value: value,
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> lieuNaissanceIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'lieuNaissance',
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> lieuNaissanceIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'lieuNaissance',
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> lieuNaissanceEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lieuNaissance',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> lieuNaissanceGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lieuNaissance',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> lieuNaissanceLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lieuNaissance',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> lieuNaissanceBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lieuNaissance',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> lieuNaissanceStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'lieuNaissance',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> lieuNaissanceEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'lieuNaissance',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> lieuNaissanceContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'lieuNaissance',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> lieuNaissanceMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'lieuNaissance',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> lieuNaissanceIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lieuNaissance',
        value: '',
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> lieuNaissanceIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'lieuNaissance',
        value: '',
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> matriculeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'matricule',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> matriculeGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'matricule',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> matriculeLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'matricule',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> matriculeBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'matricule',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> matriculeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'matricule',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> matriculeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'matricule',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> matriculeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'matricule',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> matriculeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'matricule',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> matriculeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'matricule',
        value: '',
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> matriculeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'matricule',
        value: '',
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> nomEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> nomGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'nom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> nomLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'nom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> nomBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'nom',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> nomStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'nom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> nomEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'nom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> nomContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'nom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> nomMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'nom',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> nomIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nom',
        value: '',
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> nomIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'nom',
        value: '',
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> nomParentIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'nomParent',
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> nomParentIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'nomParent',
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> nomParentEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nomParent',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> nomParentGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'nomParent',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> nomParentLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'nomParent',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> nomParentBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'nomParent',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> nomParentStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'nomParent',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> nomParentEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'nomParent',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> nomParentContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'nomParent',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> nomParentMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'nomParent',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> nomParentIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nomParent',
        value: '',
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> nomParentIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'nomParent',
        value: '',
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> prenomEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'prenom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> prenomGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'prenom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> prenomLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'prenom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> prenomBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'prenom',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> prenomStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'prenom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> prenomEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'prenom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> prenomContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'prenom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> prenomMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'prenom',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> prenomIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'prenom',
        value: '',
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> prenomIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'prenom',
        value: '',
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> sexeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'sexe',
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> sexeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'sexe',
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> sexeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sexe',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> sexeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'sexe',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> sexeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'sexe',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> sexeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'sexe',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> sexeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'sexe',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> sexeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'sexe',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> sexeContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'sexe',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> sexeMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'sexe',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> sexeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sexe',
        value: '',
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> sexeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'sexe',
        value: '',
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> telephoneParentIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'telephoneParent',
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> telephoneParentIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'telephoneParent',
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> telephoneParentEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'telephoneParent',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> telephoneParentGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'telephoneParent',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> telephoneParentLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'telephoneParent',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> telephoneParentBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'telephoneParent',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> telephoneParentStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'telephoneParent',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> telephoneParentEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'telephoneParent',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> telephoneParentContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'telephoneParent',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> telephoneParentMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'telephoneParent',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> telephoneParentIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'telephoneParent',
        value: '',
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition>
      telephoneParentIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'telephoneParent',
        value: '',
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> updatedAtEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> updatedAtGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> updatedAtLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> updatedAtBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'updatedAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> uuidEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'uuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> uuidGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'uuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> uuidLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'uuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> uuidBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'uuid',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> uuidStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'uuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> uuidEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'uuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> uuidContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'uuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> uuidMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'uuid',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> uuidIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'uuid',
        value: '',
      ));
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterFilterCondition> uuidIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'uuid',
        value: '',
      ));
    });
  }
}

extension EleveQueryObject on QueryBuilder<Eleve, Eleve, QFilterCondition> {}

extension EleveQueryLinks on QueryBuilder<Eleve, Eleve, QFilterCondition> {}

extension EleveQuerySortBy on QueryBuilder<Eleve, Eleve, QSortBy> {
  QueryBuilder<Eleve, Eleve, QAfterSortBy> sortByAdresse() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'adresse', Sort.asc);
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterSortBy> sortByAdresseDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'adresse', Sort.desc);
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterSortBy> sortByDateNaissance() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateNaissance', Sort.asc);
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterSortBy> sortByDateNaissanceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateNaissance', Sort.desc);
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterSortBy> sortByEcoleId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ecoleId', Sort.asc);
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterSortBy> sortByEcoleIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ecoleId', Sort.desc);
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterSortBy> sortByEstActif() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'estActif', Sort.asc);
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterSortBy> sortByEstActifDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'estActif', Sort.desc);
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterSortBy> sortByIsSynced() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isSynced', Sort.asc);
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterSortBy> sortByIsSyncedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isSynced', Sort.desc);
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterSortBy> sortByLieuNaissance() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lieuNaissance', Sort.asc);
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterSortBy> sortByLieuNaissanceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lieuNaissance', Sort.desc);
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterSortBy> sortByMatricule() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'matricule', Sort.asc);
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterSortBy> sortByMatriculeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'matricule', Sort.desc);
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterSortBy> sortByNom() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nom', Sort.asc);
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterSortBy> sortByNomDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nom', Sort.desc);
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterSortBy> sortByNomParent() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nomParent', Sort.asc);
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterSortBy> sortByNomParentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nomParent', Sort.desc);
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterSortBy> sortByPrenom() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prenom', Sort.asc);
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterSortBy> sortByPrenomDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prenom', Sort.desc);
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterSortBy> sortBySexe() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sexe', Sort.asc);
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterSortBy> sortBySexeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sexe', Sort.desc);
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterSortBy> sortByTelephoneParent() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'telephoneParent', Sort.asc);
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterSortBy> sortByTelephoneParentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'telephoneParent', Sort.desc);
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterSortBy> sortByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterSortBy> sortByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterSortBy> sortByUuid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uuid', Sort.asc);
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterSortBy> sortByUuidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uuid', Sort.desc);
    });
  }
}

extension EleveQuerySortThenBy on QueryBuilder<Eleve, Eleve, QSortThenBy> {
  QueryBuilder<Eleve, Eleve, QAfterSortBy> thenByAdresse() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'adresse', Sort.asc);
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterSortBy> thenByAdresseDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'adresse', Sort.desc);
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterSortBy> thenByDateNaissance() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateNaissance', Sort.asc);
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterSortBy> thenByDateNaissanceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateNaissance', Sort.desc);
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterSortBy> thenByEcoleId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ecoleId', Sort.asc);
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterSortBy> thenByEcoleIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ecoleId', Sort.desc);
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterSortBy> thenByEstActif() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'estActif', Sort.asc);
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterSortBy> thenByEstActifDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'estActif', Sort.desc);
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterSortBy> thenByIsSynced() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isSynced', Sort.asc);
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterSortBy> thenByIsSyncedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isSynced', Sort.desc);
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterSortBy> thenByLieuNaissance() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lieuNaissance', Sort.asc);
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterSortBy> thenByLieuNaissanceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lieuNaissance', Sort.desc);
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterSortBy> thenByMatricule() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'matricule', Sort.asc);
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterSortBy> thenByMatriculeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'matricule', Sort.desc);
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterSortBy> thenByNom() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nom', Sort.asc);
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterSortBy> thenByNomDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nom', Sort.desc);
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterSortBy> thenByNomParent() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nomParent', Sort.asc);
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterSortBy> thenByNomParentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nomParent', Sort.desc);
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterSortBy> thenByPrenom() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prenom', Sort.asc);
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterSortBy> thenByPrenomDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prenom', Sort.desc);
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterSortBy> thenBySexe() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sexe', Sort.asc);
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterSortBy> thenBySexeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sexe', Sort.desc);
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterSortBy> thenByTelephoneParent() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'telephoneParent', Sort.asc);
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterSortBy> thenByTelephoneParentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'telephoneParent', Sort.desc);
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterSortBy> thenByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterSortBy> thenByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterSortBy> thenByUuid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uuid', Sort.asc);
    });
  }

  QueryBuilder<Eleve, Eleve, QAfterSortBy> thenByUuidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uuid', Sort.desc);
    });
  }
}

extension EleveQueryWhereDistinct on QueryBuilder<Eleve, Eleve, QDistinct> {
  QueryBuilder<Eleve, Eleve, QDistinct> distinctByAdresse(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'adresse', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Eleve, Eleve, QDistinct> distinctByDateNaissance() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dateNaissance');
    });
  }

  QueryBuilder<Eleve, Eleve, QDistinct> distinctByEcoleId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ecoleId');
    });
  }

  QueryBuilder<Eleve, Eleve, QDistinct> distinctByEstActif() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'estActif');
    });
  }

  QueryBuilder<Eleve, Eleve, QDistinct> distinctByIsSynced() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isSynced');
    });
  }

  QueryBuilder<Eleve, Eleve, QDistinct> distinctByLieuNaissance(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lieuNaissance',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Eleve, Eleve, QDistinct> distinctByMatricule(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'matricule', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Eleve, Eleve, QDistinct> distinctByNom(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'nom', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Eleve, Eleve, QDistinct> distinctByNomParent(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'nomParent', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Eleve, Eleve, QDistinct> distinctByPrenom(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'prenom', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Eleve, Eleve, QDistinct> distinctBySexe(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'sexe', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Eleve, Eleve, QDistinct> distinctByTelephoneParent(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'telephoneParent',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Eleve, Eleve, QDistinct> distinctByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'updatedAt');
    });
  }

  QueryBuilder<Eleve, Eleve, QDistinct> distinctByUuid(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'uuid', caseSensitive: caseSensitive);
    });
  }
}

extension EleveQueryProperty on QueryBuilder<Eleve, Eleve, QQueryProperty> {
  QueryBuilder<Eleve, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Eleve, String?, QQueryOperations> adresseProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'adresse');
    });
  }

  QueryBuilder<Eleve, DateTime?, QQueryOperations> dateNaissanceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dateNaissance');
    });
  }

  QueryBuilder<Eleve, int, QQueryOperations> ecoleIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ecoleId');
    });
  }

  QueryBuilder<Eleve, bool, QQueryOperations> estActifProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'estActif');
    });
  }

  QueryBuilder<Eleve, bool, QQueryOperations> isSyncedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isSynced');
    });
  }

  QueryBuilder<Eleve, String?, QQueryOperations> lieuNaissanceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lieuNaissance');
    });
  }

  QueryBuilder<Eleve, String, QQueryOperations> matriculeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'matricule');
    });
  }

  QueryBuilder<Eleve, String, QQueryOperations> nomProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'nom');
    });
  }

  QueryBuilder<Eleve, String?, QQueryOperations> nomParentProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'nomParent');
    });
  }

  QueryBuilder<Eleve, String, QQueryOperations> prenomProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'prenom');
    });
  }

  QueryBuilder<Eleve, String?, QQueryOperations> sexeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sexe');
    });
  }

  QueryBuilder<Eleve, String?, QQueryOperations> telephoneParentProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'telephoneParent');
    });
  }

  QueryBuilder<Eleve, DateTime, QQueryOperations> updatedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'updatedAt');
    });
  }

  QueryBuilder<Eleve, String, QQueryOperations> uuidProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'uuid');
    });
  }
}

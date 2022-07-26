import 'package:equatable/equatable.dart';

class MedicineResult extends Equatable {
  final int id;
  final Composition composition;
  final Packaging packaging;
  final TradeLabel tradeLabel;
  final Manufacturer? manufacturer;
  final String code;
  const MedicineResult({
    required this.id,
    required this.composition,
    required this.packaging,
    required this.tradeLabel,
    required this.manufacturer,
    required this.code,
  });

  @override
  List<Object?> get props {
    return [
      id,
      composition,
      packaging,
      tradeLabel,
      manufacturer,
      code,
    ];
  }
}

class Composition extends Equatable {
  final int id;
  final String description;
  final List<String> atc;
  final Inn inn;
  final PharmForm pharmForm;
  final double? dosage;
  final Measure? measure;

  const Composition({
    required this.id,
    required this.description,
    required this.atc,
    required this.inn,
    required this.pharmForm,
    required this.dosage,
    required this.measure,
  });

  @override
  List<Object?> get props {
    return [
      id,
      description,
      atc,
      inn,
      pharmForm,
      dosage,
      measure,
    ];
  }
}

class TradeLabel extends Equatable {
  final int id;
  final String name;
  const TradeLabel({
    required this.id,
    required this.name,
  });

  @override
  List<Object> get props => [id, name];
}

class Inn extends Equatable {
  final int id;
  final String name;
  const Inn({
    required this.id,
    required this.name,
  });

  @override
  List<Object> get props => [id, name];
}

class PharmForm extends Equatable {
  final int id;
  final String name;
  final String shortName;
  const PharmForm({
    required this.id,
    required this.name,
    required this.shortName,
  });

  @override
  List<Object> get props => [id, name, shortName];
}

class Measure extends Equatable {
  final String name;
  final String iso;
  const Measure({
    required this.name,
    required this.iso,
  });

  @override
  List<Object> get props => [name, iso];
}

class Packaging extends Equatable {
  final int id;
  final Composition composition;
  final String description;
  final bool inBulk;
  final String? minimalQuantity;
  final String? packageQuantity;
  final Variant? variant;

  const Packaging({
    required this.id,
    required this.composition,
    required this.description,
    required this.inBulk,
    required this.minimalQuantity,
    required this.packageQuantity,
    required this.variant,
  });

  @override
  List<Object?> get props {
    return [
      id,
      composition,
      description,
      inBulk,
      minimalQuantity,
      packageQuantity,
      variant,
    ];
  }
}

class Variant extends Equatable {
  final int id;
  final PharmForm pharmForm;
  final String name;
  final String shortName;
  const Variant({
    required this.id,
    required this.pharmForm,
    required this.name,
    required this.shortName,
  });

  @override
  List<Object> get props => [id, pharmForm, name, shortName];
}

class Manufacturer extends Equatable {
  final int id;
  final String name;
  final Country country;
  const Manufacturer({
    required this.id,
    required this.name,
    required this.country,
  });

  @override
  List<Object> get props => [id, name, country];
}

class Country extends Equatable {
  final int id;
  final String name;
  final String iso2;
  final String iso3;
  const Country({
    required this.id,
    required this.name,
    required this.iso2,
    required this.iso3,
  });

  @override
  List<Object> get props => [id, name, iso2, iso3];
}

import '../../domain/entities/medicine_result.dart';

class MedicineResultModel extends MedicineResult {
  const MedicineResultModel({
    required super.id,
    required super.composition,
    required super.packaging,
    required super.tradeLabel,
    required super.manufacturer,
    required super.code,
  });

  factory MedicineResultModel.fromJson(Map<String, dynamic> json) {
    return MedicineResultModel(
      id: json['id'],
      composition: CompositionModel.fromJson(json['composition']),
      packaging: PackagingModel.fromJson(json['packaging']),
      tradeLabel: TradeLabelModel.fromJson(json['trade_label']),
      manufacturer: json['manufacturer'] == null
          ? null
          : ManufacturerModel.fromJson(json['manufacturer']),
      code: json['code'],
    );
  }
}

class PackagingModel extends Packaging {
  const PackagingModel({
    required super.id,
    required super.composition,
    required super.description,
    required super.inBulk,
    required super.minimalQuantity,
    required super.packageQuantity,
    required super.variant,
  });

  factory PackagingModel.fromJson(Map<String, dynamic> json) {
    return PackagingModel(
      id: json['id'],
      composition: CompositionModel.fromJson(json['composition']),
      description: json['description'],
      inBulk: json['in_bulk'],
      minimalQuantity: json['minimal_quantity'],
      packageQuantity: json['package_quantity'],
      variant: json['variant'] == null
          ? null
          : VariantModel.fromJson(json['variant']),
    );
  }
}

class TradeLabelModel extends TradeLabel {
  const TradeLabelModel({
    required super.id,
    required super.name,
  });

  factory TradeLabelModel.fromJson(Map<String, dynamic> json) {
    return TradeLabelModel(
      id: json['id'],
      name: json['name'],
    );
  }
}

class InnModel extends Inn {
  const InnModel({
    required super.id,
    required super.name,
  });

  factory InnModel.fromJson(Map<String, dynamic> json) {
    return InnModel(
      id: json['id'],
      name: json['name'],
    );
  }
}

class CompositionModel extends Composition {
  const CompositionModel({
    required super.id,
    required super.description,
    required super.atc,
    required super.inn,
    required super.pharmForm,
    required super.dosage,
    required super.measure,
  });

  factory CompositionModel.fromJson(Map<String, dynamic> json) {
    return CompositionModel(
      id: json['id'],
      description: json['description'],
      atc: json['atc'].cast<String>(),
      inn: InnModel.fromJson(json['inn']),
      pharmForm: PharmFormModel.fromJson(json['pharm_form']),
      dosage: json['dosage'],
      measure: json['measure'] == null
          ? null
          : MeasureModel.fromJson(json['measure']),
    );
  }
}

class MeasureModel extends Measure {
  const MeasureModel({
    required super.name,
    required super.iso,
  });

  factory MeasureModel.fromJson(Map<String, dynamic> json) {
    return MeasureModel(
      name: json['name'],
      iso: json['iso'],
    );
  }
}

class VariantModel extends Variant {
  const VariantModel({
    required super.id,
    required super.pharmForm,
    required super.name,
    required super.shortName,
  });

  factory VariantModel.fromJson(Map<String, dynamic> json) {
    return VariantModel(
      id: json['id'],
      pharmForm: PharmFormModel.fromJson(json['pharm_form']),
      name: json['name'],
      shortName: json['short_name'],
    );
  }
}

class PharmFormModel extends PharmForm {
  const PharmFormModel({
    required super.id,
    required super.name,
    required super.shortName,
  });

  factory PharmFormModel.fromJson(Map<String, dynamic> json) {
    return PharmFormModel(
      id: json['id'],
      name: json['name'],
      shortName: json['short_name'],
    );
  }
}

class ManufacturerModel extends Manufacturer {
  const ManufacturerModel({
    required super.id,
    required super.name,
    required super.country,
  });

  factory ManufacturerModel.fromJson(Map<String, dynamic> json) {
    return ManufacturerModel(
      id: json['id'],
      name: json['name'],
      country: CountryModel.fromJson(json['country']),
    );
  }
}

class CountryModel extends Country {
  const CountryModel({
    required super.id,
    required super.name,
    required super.iso2,
    required super.iso3,
  });

  factory CountryModel.fromJson(Map<String, dynamic> json) {
    return CountryModel(
      id: json['id'],
      name: json['name'],
      iso2: json['iso2'],
      iso3: json['iso3'],
    );
  }
}

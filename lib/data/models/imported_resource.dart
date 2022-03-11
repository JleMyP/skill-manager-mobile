import '../base_model.dart';


class ImportedResource extends BaseModel {
  String name;
  String? description;
  bool isIgnored;
  final DateTime createdAt;
  String type;
  Map<String, dynamic> typeSpecific;

  ImportedResource({
    id,
    required this.name,
    this.description,
    required this.isIgnored,
    required this.createdAt,
    required this.type,
    required this.typeSpecific,
  }): super(id: id);

  void update({bool? isIgnored}) {
    if (isIgnored != null && this.isIgnored != isIgnored) {
      this.isIgnored = isIgnored;
      notifyListeners();
    }
  }

  void updateFrom(BaseModel other) {
    other as ImportedResource;
    name = other.name;
    description = other.description;
    isIgnored = other.isIgnored;
    typeSpecific = other.typeSpecific;
    notifyListeners();
  }
}

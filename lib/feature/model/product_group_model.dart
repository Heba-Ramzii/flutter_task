class ProductGroupModel {
  final int id;
  final int? parentId;
  final String parentName;
  final String groupName;
  final String groupNameWithCode;
  final String code; // Ensure this is treated as a string
  final String nameA;
  final String nameE;
  final String notes;
  final bool hasChildren;
  final int levels;
  final String? post;
  final bool? deleted;
  final String? supplierId;
  final String? supplierName;
  final int taxId;
  final String taxName;
  final String? codePrefix;

  ProductGroupModel({
    required this.id,
    this.parentId,
    this.parentName = "",
    required this.groupName,
    required this.groupNameWithCode,
    required this.code,
    required this.nameA,
    required this.nameE,
    this.notes = "",
    required this.hasChildren,
    required this.levels,
    this.post,
    this.deleted,
    this.supplierId,
    this.supplierName,
    required this.taxId,
    required this.taxName,
    this.codePrefix,
  });

  factory ProductGroupModel.fromJson(Map<String, dynamic> json) {
    return ProductGroupModel(
      id: json['id'],
      parentId: json['parentId'],
      parentName: json['parentName'] ?? "",
      groupName: json['groupName'] ?? "",
      groupNameWithCode: json['groupNameWithCode'] ?? "",
      code: json['code']?.toString() ?? "",  // Convert to string
      nameA: json['nameA'] ?? "",
      nameE: json['nameE'] ?? "",
      notes: json['notes'] ?? "",
      hasChildren: json['hasChildren'] ?? false,
      levels: json['levels'] ?? 0,
      post: json['post'],
      deleted: json['deleted'],
      supplierId: json['supplierId']?.toString(),
      supplierName: json['supplierName'],
      taxId: json['taxId'] ?? 0,
      taxName: json['taxName'] ?? "",
      codePrefix: json['codePrefix']?.toString(),
    );
  }
}

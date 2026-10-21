import 'package:findora/featured/createReport/domain/entity/report_entity.dart';

class ReportModel {
  final String id;
  final bool isLost;
  final List<String> photos;
  final String title;
  final String category;
  final String description;
  final String address;
  final DateTime? dateLost;
  final DateTime createdAt;
  final String? userId;

  ReportModel({
    required this.id,
    required this.isLost,
    required this.photos,
    required this.title,
    required this.category,
    required this.description,
    required this.address,
    this.dateLost,
    required this.createdAt,
    this.userId,
  });

  factory ReportModel.fromJson(Map<String, dynamic> json) {
    return ReportModel(
      id: json['id'] ?? '',
      isLost: json['isLost'] ?? true,
      photos: List<String>.from(json['photos'] ?? []),
      title: json['title'] ?? '',
      category: json['category'] ?? '',
      description: json['description'] ?? '',
      address: json['address'] ?? '',
      dateLost:
          json['dateLost'] != null ? DateTime.parse(json['dateLost']) : null,
      createdAt: json['createdAt'] != null
          ? DateTime.parse(json['createdAt'])
          : DateTime.now(),
      userId: json['userId'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'isLost': isLost,
      'photos': photos,
      'title': title,
      'category': category,
      'description': description,
      'address': address,
      'dateLost': dateLost?.toIso8601String(),
      'createdAt': createdAt.toIso8601String(),
      'userId': userId,
    };
  }

  ReportEntity toEntity() {
    return ReportEntity(
      id: id,
      isLost: isLost,
      photos: photos,
      title: title,
      category: category,
      description: description,
      address: address,
      dateLost: dateLost,
      createdAt: createdAt,
      userId: userId,
    );
  }

  factory ReportModel.fromEntity(ReportEntity entity) {
    return ReportModel(
      id: entity.id,
      isLost: entity.isLost,
      photos: entity.photos,
      title: entity.title,
      category: entity.category,
      description: entity.description,
      address: entity.address,
      dateLost: entity.dateLost,
      createdAt: entity.createdAt,
      userId: entity.userId,
    );
  }

  ReportModel copyWith({
    String? id,
    bool? isLost,
    List<String>? photos,
    String? title,
    String? category,
    String? description,
    String? address,
    DateTime? dateLost,
    DateTime? createdAt,
    String? userId,
  }) {
    return ReportModel(
      id: id ?? this.id,
      isLost: isLost ?? this.isLost,
      photos: photos ?? this.photos,
      title: title ?? this.title,
      category: category ?? this.category,
      description: description ?? this.description,
      address: address ?? this.address,
      dateLost: dateLost ?? this.dateLost,
      createdAt: createdAt ?? this.createdAt,
      userId: userId ?? this.userId,
    );
  }
}

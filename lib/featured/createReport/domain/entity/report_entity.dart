class ReportEntity {
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

  ReportEntity({
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

  ReportEntity copyWith({
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
    return ReportEntity(
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

class CrackDTO {
  final int crackId;
  final int maintenanceOrderId;
  final int locationId;
  final String locationName;
  final String reporterId;
  final String reporterName;
  final String position;
  final String description;
  final String severity;
  final String status;
  final String image;
  final int assessmentResult;
  final String assessmentDescription;
  final String created;
  final String lastModified;
  final DateTime createdDate;
  final DateTime modifiedDate;

  CrackDTO._({
    this.crackId,
    this.maintenanceOrderId,
    this.locationId,
    this.locationName,
    this.reporterId,
    this.reporterName,
    this.position,
    this.description,
    this.severity,
    this.status,
    this.image,
    this.assessmentResult,
    this.assessmentDescription,
    this.created,
    this.lastModified,
    this.createdDate,
    this.modifiedDate,
  });

  factory CrackDTO.fromJson(Map<String, dynamic> json) {
    return new CrackDTO._(
      crackId: json['crackId'],
      maintenanceOrderId: json['maintenanceOrderId'],
      locationId: json['locationId'],
      locationName: json['locationName'],
      reporterId: json['reporterId'],
      reporterName: json['reporterName'],
      position: json['position'],
      description: json['description'],
      status: json['status'],
      severity: json['severity'],
      image: json['image'],
      assessmentResult: json['assessmentResult'],
      assessmentDescription: json['assessmentDescription'],
      created: json['created'],
      lastModified: json['lastModified'],
      createdDate:
          json['created'] == null ? null : DateTime.parse(json['created']),
      modifiedDate: json['lastModified'] == null
          ? null
          : DateTime.parse(json['lastModified']),
    );
  }
}

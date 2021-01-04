class WorkerDTO {
  final int maintenanceWorkerId;
  final String email;
  final String phone;
  final String name;
  final String address;
  final String created;
  final String lastModified;
  WorkerDTO._({
    this.maintenanceWorkerId,
    this.email,
    this.phone,
    this.name,
    this.address,
    this.created,
    this.lastModified,
  });

  factory WorkerDTO.fromJson(Map<String, dynamic> json) {
    return new WorkerDTO._(
      maintenanceWorkerId: json['maintenanceWorkerId'],
      address: json['address'],
      email: json['email'],
      phone: json['phone'],
      name: json['name'],
      created: json['created'],
      lastModified: json['lastModified'],
    );
  }
}

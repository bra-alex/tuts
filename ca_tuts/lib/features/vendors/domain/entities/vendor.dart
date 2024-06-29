import 'package:equatable/equatable.dart';

class Vendor extends Equatable {
  final String id, email, logo, name, phoneNumber, vendorName, prefix;
  final int points;
  final bool isVerified;

  const Vendor({
    required this.id,
    required this.email,
    required this.logo,
    required this.name,
    required this.phoneNumber,
    required this.vendorName,
    required this.prefix,
    required this.points,
    required this.isVerified,
  });

  @override
  List<Object?> get props => [
        id,
        email,
        logo,
        name,
        phoneNumber,
        vendorName,
        prefix,
        points,
        isVerified,
      ];
}

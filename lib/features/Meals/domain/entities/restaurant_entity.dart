import 'package:equatable/equatable.dart';

class Restaurant extends Equatable {
  final String id;
  final String address;
  final String pictureUrl;

  const Restaurant({
    required this.id,
    required this.address,
    required this.pictureUrl,
  });

  @override
  List<Object?> get props =>[id,
    address,
    pictureUrl,];
}
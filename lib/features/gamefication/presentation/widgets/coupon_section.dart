import 'package:flutter/material.dart';
import 'coupon_grid_view.dart';
import 'no_coupon.dart';
class CouponSection extends StatelessWidget {
  const CouponSection({super.key, required this.noCoupon});

  final bool noCoupon;

  @override
  Widget build(BuildContext context) {
    return noCoupon ? const NoCouponSection() :const CouponGridView();
  }
}
import 'package:flutter/material.dart';

class BabyBumpModel {
  final int id;
  final String image;

  BabyBumpModel({
    @required this.id,
    @required this.image,
  });
}

List<BabyBumpModel> babyBumpModel = [
  BabyBumpModel(
    id: 1,
    image: 'assets/baby/comp_rm_photo_ultrasound_20_weeks.jpg',
  ),
  BabyBumpModel(
    id: 2,
    image: 'assets/baby/getty_rm_photo_of_4_week_fetus.jpg',
  ),
  BabyBumpModel(
    id: 3,
    image: 'assets/baby/getty_rm_photo_of_sperm_fertilizing_egg.jpg',
  ),
  BabyBumpModel(
    id: 4,
    image: 'assets/baby/istock_photo_of_pregnancy.jpg',
  ),
  BabyBumpModel(
    id: 5,
    image: 'assets/baby/nilsson_rm_photo_28_weeks.jpg',
  ),
  BabyBumpModel(
    id: 6,
    image: 'assets/baby/nilsson_rm_photo_36_week_fetus.jpg',
  ),
  BabyBumpModel(
    id: 7,
    image: 'assets/baby/nilsson_rm_photo_of_20_week_fetus.jpg',
  ),
  BabyBumpModel(
    id: 8,
    image: 'assets/baby/phototake_newborn_at_birth.jpg',
  ),
  BabyBumpModel(
    id: 9,
    image: 'assets/baby/phototake_photo_of_8_week_fetus_circle.jpg',
  ),
];

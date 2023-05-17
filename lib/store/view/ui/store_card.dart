import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:location/store/model/store_model.dart';
import 'package:nb_utils/nb_utils.dart';
class StoreCard extends StatelessWidget {
  late final StoreModel store;
  late final  id;
  StoreCard({required this.id});

  @override
  Widget build(BuildContext context) {
    return AppButton(
      color: Colors.blue,
      onTap: () {},
      child: AutoSizeText(
        '${store.name}',
        style: TextStyle(
          fontSize: 22,
          color: Colors.white,
        ),
        maxLines: 1,
        minFontSize: 5,
      ),
    );
  }
}

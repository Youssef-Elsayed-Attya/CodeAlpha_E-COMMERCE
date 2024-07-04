// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sneakers/models/product_model.dart';
import 'package:sneakers/theme/custom_app_theme.dart';
import 'package:sneakers/utils/constants.dart';

PreferredSize? customAppBarDe(ctx, ProductModel model) {
  return PreferredSize(
    preferredSize: const Size.fromHeight(60),
    child: AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      centerTitle: true,
      title: Text(model.name, style: AppThemes.detailsAppBar),
      leading: IconButton(
        onPressed: () {
          Navigator.pop(ctx);
        },
        icon: Icon(
          Icons.arrow_back,
          color: AppConstantsColor.darkTextColor,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.favorite_border),
        ),
      ],
    ),
  );
}

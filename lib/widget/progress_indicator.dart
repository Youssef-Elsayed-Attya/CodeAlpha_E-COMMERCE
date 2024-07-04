import 'package:flutter/material.dart';
import 'package:sneakers/utils/constants.dart';

showProgress(BuildContext context) {
  showDialog(
    barrierDismissible: false,
    context: context,
    builder: (context) =>
    const Center(child: CircularProgressIndicator(
      color: AppConstantsColor.pink ,
    )),
  );
}

endProgress(BuildContext context){
  Navigator.pop(context);
}
import 'package:flutter/cupertino.dart';
import 'package:flutter_cubit/misc/colors.dart';

class responsiveButton extends StatelessWidget {
  double? width;
  bool? isresponsive;
  responsiveButton({Key? key, this.width, this.isresponsive = false})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.mainColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Image.asset("img/button-one.png")],
        ));
  }
}

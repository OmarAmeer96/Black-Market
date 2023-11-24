import 'package:black_market/Core/utils/assets.dart';
import 'package:black_market/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    this.onTap,
  });

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        InkWell(
          borderRadius: BorderRadius.circular(16),
          onTap: onTap,
          child: SizedBox(
            height: 60,
            width: 60,
            child: Padding(
              padding: const EdgeInsets.all(6),
              child: Container(
                width: 47,
                height: 47,
                decoration: ShapeDecoration(
                  color: kPrimaryColor2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  child: SvgPicture.asset(AssetsData.arrowLeft),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}

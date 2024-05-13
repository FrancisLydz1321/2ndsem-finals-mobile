import 'package:_fourtho/gen/assets.gen.dart';
import 'package:_fourtho/gen/colors.gen.dart';
import 'package:_fourtho/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return const BottomAppBar(
      child: SizedBox(
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _NavBarIcon(
              iconPath: null,
              isSelected: index == 0,
              onTap: index != 0
                  ? () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: ((context) => const HomeScreen()),
                        ),
                      );
                    }
                  : null,
            ),
            _NavBarIcon(
              iconPath: Assets.icons.ionNavigateCircle,
            ),
            _NavBarIcon(
              iconPath: Assets.icons.ionNavigateCircle,
            ),
            _NavBarIcon(
              iconPath: Assets.icons.logosPaypal,
            ),
          ],
        ),
      ),
    );
  }
}

class _NavBarIcon extends StatelessWidget {
  final String iconPath;
  final Function()? onTap;
  final bool isSelected;

  const _NavBarIcon({
    Key? key,
    required this.iconPath,
    this.onTap,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color = isSelected ? ColorName.primaryColor : ColorName.disabledGrey;
    return InkWell(
      onTap: onTap,
      child: Center(
        child: SvgPicture.asset(iconPath, color: color),
      ),
    );
  }
}

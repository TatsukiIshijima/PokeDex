import 'package:flutter/material.dart';
import 'package:poke_dex_app/extension/string_extension.dart';
import 'package:poke_dex_app/gen/colors.gen.dart';

class PokeTypeView extends StatelessWidget {
  const PokeTypeView({
    Key? key,
    required this.types,
    required this.typeItemWidth,
    required this.typeItemHeight,
    required this.space,
  }) : super(key: key);

  final List<String> types;
  final double typeItemWidth;
  final double typeItemHeight;
  final double space;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(
        types.length,
        (index) {
          return Container(
            width: typeItemWidth,
            height: typeItemHeight,
            margin: EdgeInsets.only(
              right: index == types.length - 1 ? 0 : space,
            ),
            child: _TypeText(
              type: types[index],
              bgColor: types[index].toTypeColor(),
            ),
          );
        },
      ),
    );
  }
}

class _TypeText extends StatelessWidget {
  const _TypeText({
    Key? key,
    required this.type,
    this.textColor = ColorName.white,
    this.cornerRadius = 20.0,
    this.borderWidth = 1.0,
    required this.bgColor,
  }) : super(key: key);

  final String type;
  final Color textColor;
  final double cornerRadius;
  final double borderWidth;
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: bgColor,
        border: Border.all(
          color: bgColor,
          width: borderWidth,
        ),
        borderRadius: BorderRadius.circular(
          cornerRadius,
        ),
      ),
      child: Center(
        child: Text(
          type,
          style: TextStyle(
            color: textColor,
          ),
        ),
      ),
    );
  }
}

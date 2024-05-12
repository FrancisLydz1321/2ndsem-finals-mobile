import 'package:_fourtho/gen/colors.gen.dart';
import 'package:_fourtho/gen/fonts.gen.dart';
import 'package:_fourtho/model/card_model.dart';
import 'package:_fourtho/widgets/app_text.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        centerTitle: false,
        title: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: AppText.title('Birthday Card'),
        ),
        // Text(
        //   'Birthday Card',
        //   textAlign: TextAlign.center,
        //   maxLines: 1,
        //   style: TextStyle(
        //     fontFamily: FontFamily.playfairDisplay,
        //     fontSize: 26,
        //     fontWeight: FontWeight.bold,
        //   ),
        // ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            const SizedBox(height: 10),
            _SearchBar(), // custom search widget
            const SizedBox(height: 10),
            _CategoryFilters(), // custom widget
          ],
        ),
      ),
    );
  }
}

class _SearchBar extends StatelessWidget {
  const _SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: TextFormField(
        decoration: InputDecoration(
          filled: true,
          fillColor: ColorName.lightGrey,
          hintText: 'Search Birthday Card',
          prefixIcon: const Icon(Icons.search),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
              borderSide: BorderSide.none),
        ),
        onChanged: (value) {},
      ),
    );
  }
}

class _CategoryFilters extends StatelessWidget {
  const _CategoryFilters({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: [
          ...CardCategory.values.map(
            (category) => CustomChip(label: category.name),
          ),
        ],
      ),
    );
  }
}

class CustomChip extends StatelessWidget {
  final String label;
  final bool isSelected;

  const CustomChip({
    Key? key,
    required this.label,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(right: 10.0),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5.0),
        decoration: BoxDecoration(
            color: isSelected ? ColorName.primaryColor : ColorName.disabledGrey,
            borderRadius: BorderRadius.circular(50.0)),
        child: Center(child: AppText.small(label)));
  }
}

import 'dart:ui';

import 'package:_fourtho/gen/colors.gen.dart';
import 'package:_fourtho/gen/fonts.gen.dart';
import 'package:_fourtho/model/card_model.dart';
import 'package:_fourtho/widgets/app_text.dart';
import 'package:_fourtho/widgets/custom_bottom_nav_bar.dart';
import 'package:_fourtho/widgets/custom_chip.dart';
import 'package:_fourtho/widgets/custom_gift_card.dart';
import 'package:flutter/material.dart';

import 'package:_fourtho/utilities/card_category_extensions.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.blue, // Colors.transparent
        centerTitle: false,
        title: Padding(
          padding: const EdgeInsets.only(left: 20.0),
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
      bottomNavigationBar: CustomNavBar(index: 0),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            const SizedBox(height: 20),
            _SearchBar(), // custom search widget
            const SizedBox(height: 20),
            _CategoryFilters(), // custom widget
            const SizedBox(height: 20),
            _CardGrid(),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

//homescreen search bar
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
            (category) => CustomChip(label: category.capitalName()),
          ),
        ],
      ),
    );
  }
}

// Card in home screen
class _CardGrid extends StatelessWidget {
  const _CardGrid({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context)
        .size; // get the size of current screen/mobile screen
    return SizedBox(
      height: size.height * 0.6,
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 0.75, mainAxisSpacing: 10.0),
        itemCount: 10,
        itemBuilder: ((context, index) {
          return Center(
            child: CustomGiftCard(
              card: CardModel.sampleCards[3],
              width: size.width * 0.5,
            ),
          ); // extracted widget previously container
        }),
      ),
    );
  }
}

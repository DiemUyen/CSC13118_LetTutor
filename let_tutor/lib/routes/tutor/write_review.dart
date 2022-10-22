import 'package:flutter/material.dart';
import 'package:let_tutor/widgets/star_rating.dart';

class WritingReviewPage extends StatefulWidget {
  const WritingReviewPage({Key? key}) : super(key: key);

  @override
  State<WritingReviewPage> createState() => _WritingReviewPageState();
}

class _WritingReviewPageState extends State<WritingReviewPage> {

  Widget starRating() {
    return Center(
      child: StarRating(
        initialRating: 0,
        ignoreGestures: false,
        ratingUpgrade: (double value) { setState(() {
          value = value;
        });},
        itemSize: 48,
      ),
    );
  }

  Widget textReview() {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(12)
      ),
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: const TextField(
        keyboardType: TextInputType.multiline,
        maxLines: 10,
        scrollPhysics: ScrollPhysics(),
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: 'Enter your reviews'
        ),
      ),
    );
  }

  Widget saveButton() {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Text('Save')
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              starRating(),
              const SizedBox(height: 8,),

              textReview(),
              const SizedBox(height: 8,),

              saveButton(),
              const SizedBox(height: 16,),
            ],
          ),
        ),
      ),
    );
  }
}

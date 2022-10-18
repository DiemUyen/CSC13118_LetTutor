import 'package:flutter/material.dart';

class TransparentAppBar extends StatelessWidget {
  const TransparentAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 0, right: 16, bottom: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Hello,", style: Theme.of(context).textTheme.headline6,),
                Text("Diem Uyen", style: Theme.of(context).textTheme.headline6,)
              ],
            ),
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.settings_outlined))
        ],
      ),
    );
  }
}

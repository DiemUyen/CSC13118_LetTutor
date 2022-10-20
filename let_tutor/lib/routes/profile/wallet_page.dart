import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class WalletPage extends StatefulWidget {
  const WalletPage({Key? key}) : super(key: key);

  @override
  State<WalletPage> createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Column(
        children: [
          // Total lessons
          Card(
            elevation: 2,
            child: SizedBox(
              width: constraints.maxWidth,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text('Total Lessons', style: Theme.of(context).textTheme.headline6,),
                    const SizedBox(height: 8,),
                    Text('3121', style: Theme.of(context).textTheme.headline6,),
                    const SizedBox(height: 8,),
                    Text(DateFormat('yyyy-MM-dd').format(DateTime.now()))
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 16,),

          // Bonus
          Card(
            elevation: 2,
            child: SizedBox(
              width: constraints.maxWidth,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text('Bonus', style: Theme.of(context).textTheme.headline6,),
                    const SizedBox(height: 8,),
                    Text('0 VND', style: Theme.of(context).textTheme.headline6,),
                    const SizedBox(height: 8,),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          contentPadding: const EdgeInsets.all(16),
                          border: const OutlineInputBorder(),
                          hintText: 'Referral Code'
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 16,),

          // Transactions
          Text('Transactions', style: Theme.of(context).textTheme.headline6,),
          ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: 20,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Row(
                    children: [
                      const Icon(Icons.arrow_downward_outlined),
                      const SizedBox(width: 8,),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Book Keegan', style: Theme.of(context).textTheme.subtitle2,),
                            const Text('2022-10-20')
                          ],
                        ),
                      ),
                      const Text('1 lesson', style: TextStyle(color: Colors.redAccent),)
                    ],
                  ),
                  const SizedBox(height: 16,)
                ],
              );
            },
          )
        ],
      );
    });
  }
}

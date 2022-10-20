import 'package:flutter/material.dart';

class ChangePasswordPage extends StatefulWidget {
  const ChangePasswordPage({Key? key}) : super(key: key);

  @override
  State<ChangePasswordPage> createState() => _ChangePasswordPageState();
}

class _ChangePasswordPageState extends State<ChangePasswordPage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return SizedBox(
        width: constraints.maxWidth/2,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Change Password', style: Theme.of(context).textTheme.headline6,),
            SizedBox(height: 16,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 1,
                  child: Text('Old Password', textAlign: TextAlign.end,),
                ),
                SizedBox(width: 8,),
                Expanded(
                  flex: 2,
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12)
                      ),
                      hintText: '',
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    flex: 1,
                    child: Text('New Password', textAlign: TextAlign.end,)
                ),
                SizedBox(width: 8,),
                Expanded(
                  flex: 2,
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12)
                      ),
                      hintText: ''
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 1,
                  child: Text('Confirm New Password', textAlign: TextAlign.end,),
                ),
                SizedBox(width: 8,),
                Expanded(
                  flex: 2,
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12)
                      ),
                      hintText: ''
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16,),
            ElevatedButton(
              child: Text('Change Password'),
              onPressed: () { },
            )
          ],
        ),
      );
    });
  }
}

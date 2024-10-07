import 'package:flutter/material.dart';
import 'package:yuraina/pages/house_page.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
       body: Center(
         child: Padding(
           padding: const EdgeInsets.all(20.0),
           child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Expanded(
                     child: ClipRRect(
                       borderRadius: BorderRadius.circular(20),
                       child: Image.asset(
                               "lib/images/homepage_four.webp",
                               fit: BoxFit.cover,
                               height: 400,
                           ),
                     ),
                   ),

                 ],
               ),
               SizedBox(height: 15,),
               Text(
                   'Yuraina Real Estate',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                    ),
               ),
               Text(
                 'changing life through real estate',
                 textAlign: TextAlign.center,
                 style: TextStyle(
                     fontSize: 16,
                     fontWeight: FontWeight.bold,
                     color: Colors.grey
                 ),
               ),
               SizedBox(height: 20),

                  GestureDetector(
                    onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => HousePage())),
                    child: Container(
                     padding: EdgeInsets.all(2),
                     width: 300,
                     decoration: BoxDecoration(
                         color: Theme.of(context).colorScheme.inversePrimary,
                       borderRadius: BorderRadius.circular(12)
                     ),
                     child: Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Text(
                         'Start',
                         textAlign: TextAlign.center,
                         style: TextStyle(
                             fontSize: 18,
                             fontWeight: FontWeight.bold,
                             color: Colors.white,
                         ),
                       ),
                     ),
                                     ),
                  ),
             ],
           ),
         ),
       )
    );
  }
}

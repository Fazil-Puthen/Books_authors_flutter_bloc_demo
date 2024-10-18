import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //searchbox
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
              child: TextFormField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 6),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none),
                  filled: true,
                  fillColor: Colors.grey[250],
                  prefix: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.search,color: Colors.black,),
                      SizedBox(width: 10,),
                      Text('Search....',style: TextStyle(color: Colors.black),)
                    ],
                  )
                ),
              ),
            ),

            //gridview
            Expanded(
              child: SizedBox(width: MediaQuery.of(context).size.width,
                child: GridView.builder(
                  gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 0.6,
                    crossAxisCount:2),

                    //builds the gridview
                   itemBuilder:(context, index) {
                    //container returned inside the girdview
                     return Container(
                      height: 500,
                      decoration: const BoxDecoration(
                        border: Border(
                        bottom: BorderSide(color: Colors.grey,width: 0.2),
                        left:BorderSide(color: Colors.grey,width: 0.2),
                        right: BorderSide(color: Colors.grey,width: 0.2),
                        top: BorderSide.none )
                      ),
                      child: Column(
                        children: [
                          Container(
                            margin:const EdgeInsets.only(top: 10),
                            height: 200,
                            child:Center(
                              child: ClipRRect(
                               child: Image.asset('assets/richdad1.jpg'),
                              ),
                            ),
                          ),
                         Container(
                           child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               const SizedBox(height: 15,),
                               const Text('Rich dad poor Dad',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),),
                               const SizedBox(height: 1,),
                               const Text('Robert T Kiyoski'),
                               const SizedBox(height: 6,),
                               const Text('₹ 850.00',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w800),),
                             ],
                           ),
                         ),
                        ],
                      
                      ),
                     );
                   },
                   itemCount: 11,),
              ),
            ),
          ],
        );
  }
}
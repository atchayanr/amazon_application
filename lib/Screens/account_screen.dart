
import 'package:amazon_application/utils/color_themes.dart';
import 'package:amazon_application/utils/constants.dart';
import 'package:amazon_application/utils/utils.dart';
import 'package:amazon_application/widgets/account_screen_appbar.dart';
import 'package:amazon_application/widgets/products_list.dart';
import 'package:flutter/material.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  
  @override
  Widget build(BuildContext context) {
    Size screenSize = Utils().getScreenSize();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:  AccountScreenAppBar(),
      body: SingleChildScrollView(
        child: SizedBox(
          height: screenSize.height,
          width: screenSize.width,
          child: Column(
            children: [
           
              const IntroductionWidgetAccountScreen(), 
                 const SizedBox(height: 20,),       
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: [
                    SizedBox(
                    height: 50,
                    width: 180,
                    child: ElevatedButton(
                      onPressed: (){},
                       // ignore: sort_child_properties_last
                       child: const Text(
                        "Your Orders",
                        style: TextStyle(fontSize: 18,color: Colors.black),
                      ),
                      style: ElevatedButton.styleFrom(
                        // padding: EdgeInsets.all(20),
                    backgroundColor: const Color.fromARGB(255, 255, 252, 252),
                    side: const BorderSide(
                      color: Color.fromARGB(255, 227, 227, 227),
                       width: 0.5
                       ),
                       shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                        
                       )
                 ),
                       ),
                  ),
                    SizedBox(
                    height: 50,
                    width: 180,
                    child: ElevatedButton(
                      onPressed: (){},
                       // ignore: sort_child_properties_last
                       child: const Text(
                        "Buy Again",
                        style: TextStyle(fontSize: 18,color: Colors.black),
                      ),
                      style: ElevatedButton.styleFrom(
                        // padding: EdgeInsets.all(20),
                    backgroundColor: const Color.fromARGB(255, 255, 252, 252),
                    side: const BorderSide(
                      color: Color.fromARGB(255, 227, 227, 227),
                       width: 0.5
                       ),
                       shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                        
                       )
                 ),
                       ),
                  ),
                     
                   ],
                 ),
               ),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 50,
                    width: 180,
                    child: ElevatedButton(
                      onPressed: (){},
                       // ignore: sort_child_properties_last
                       child: const Text(
                        "Your Account",
                        style: TextStyle(fontSize: 18,color: Colors.black),
                      ),
                      style: ElevatedButton.styleFrom(
                        // padding: EdgeInsets.all(20),
                    backgroundColor: const Color.fromARGB(255, 255, 252, 252),
                    side: const BorderSide(
                      color: Color.fromARGB(255, 227, 227, 227),
                       width: 0.5
                       ),
                       shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                        
                       )
                 ),
                       ),
                  ),
                      //  
                   SizedBox(
                    height: 50,
                    width: 180,
                    child: ElevatedButton(
                      onPressed: (){},
                       // ignore: sort_child_properties_last
                       child: const Text(
                        "Your Wish List",
                        style: TextStyle(fontSize: 18,color: Colors.black),
                      ),
                      style: ElevatedButton.styleFrom(
                        // padding: EdgeInsets.all(20),
                    backgroundColor: const Color.fromARGB(255, 255, 252, 252),
                    side: const BorderSide(
                      color: Color.fromARGB(255, 227, 227, 227),
                       width: 0.5
                       ),
                       shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                        
                       )
                 ),
                       ),
                  ),
                   
                 ],
               ) ,
                  const SizedBox(height: 30,),
               const ProductsList(title: "Your Orders", children: yourOrders)  ,
               Expanded(
                child: ListView(
                  children:  [
                    ListTile(
                      title: const Text("Order : Kurtis",style: TextStyle(fontWeight: FontWeight.bold),),
                      subtitle:const Text("Address : Bangalore") ,
                      trailing: IconButton(onPressed: (){}, icon: const Icon(Icons.check,color: Colors.green,))
                    ),
                     ListTile(
                      title: const Text("Order : Home appliance",style: TextStyle(fontWeight: FontWeight.bold)),
                      subtitle:const Text("Address : Bangalore"),
                      trailing: IconButton(onPressed: (){}, icon: const Icon(Icons.check,color: Colors.green,))

                    ),
                     ListTile(
                      title: const Text("Order : Skin care",style: TextStyle(fontWeight: FontWeight.bold)),
                      subtitle:const Text("Address : Bangalore",) ,
                      trailing: IconButton(onPressed: (){}, icon: const Icon(Icons.check,color: Colors.green,))
                    ),
                     ListTile(
                      title: const Text("Order : Handbags",style: TextStyle(fontWeight: FontWeight.bold)),
                      subtitle:const Text("Address : Bangalore",) ,
                      trailing: IconButton(onPressed: (){}, icon: const Icon(Icons.check,color: Colors.green,))
                    ),
                     ListTile(
                      title: const Text("Order : Bottles",style: TextStyle(fontWeight: FontWeight.bold)),
                      subtitle:const Text("Address : Bangalore",) ,
                      trailing: IconButton(onPressed: (){}, icon: const Icon(Icons.check,color: Colors.green,))
                    ),
                     ListTile(
                      title: const Text("Order : Sunglasses",style: TextStyle(fontWeight: FontWeight.bold)),
                      subtitle:const Text("Address : Bangalore" ) ,
                      trailing: IconButton(onPressed: (){}, icon: const Icon(Icons.check,color: Colors.green,))
                    )
                  ],
                )
                )      
            ],
          ),
        ),
      ),
    );
  }
}

class IntroductionWidgetAccountScreen extends StatelessWidget {
  const IntroductionWidgetAccountScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kAppBarHeight/2,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
        colors:backgroundGradient,
        begin: Alignment.centerLeft,
        end: Alignment.centerRight
     ),
      ),
      child: Container(
      height: kAppBarHeight/2,
      decoration:  BoxDecoration(
        gradient: LinearGradient(
        colors:[Colors.white,Colors.white.withOpacity(0.000000000000001)],
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter
     ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 17),
            child: RichText(
              text: TextSpan(
                children:[
                  TextSpan(
                    text: "Hello, ",
                    style: TextStyle(
                    color: Colors.grey[800],
                     fontSize: 27
                     )
                  ),
                  TextSpan(text: "Atchaya",
                    style: TextStyle(
                    color: Colors.grey[800],
                     fontSize: 27,
                     fontWeight: FontWeight.bold
                     )
                  ),                        
                ]
                 )),
          ),
          const Padding(
            padding: EdgeInsets.only(right:20),
            child: CircleAvatar(
              backgroundImage:AssetImage("/images/user.jpeg"),

              ),
          )
        ],
      ),
       ) );
  }
}
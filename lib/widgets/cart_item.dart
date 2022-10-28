import 'package:amazon_application/utils/color_themes.dart';
import 'package:amazon_application/utils/utils.dart';
import 'package:amazon_application/widgets/custom_square_button.dart';
import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = Utils().getScreenSize();
    return Container(
      height: screenSize.height/2,
      width: screenSize.width,
      decoration: const BoxDecoration(
       color: backgroundColor,
        border: Border(
          bottom:BorderSide(
            color: Colors.grey,
            width: 1
          )
           ),
      ),
      child: Column(
        children: [
          Expanded(
           child: SingleChildScrollView(
            child: Column(
              children:const [
               _Item(
                image:"https://m.media-amazon.com/images/I/81qOAlbBTdL._UY500_.jpg",
                title:"Handbag For Women",
                price:"₹ 2,400",
                text:"Colour : Black"
               ),
                _Item(
                image: "https://m.media-amazon.com/images/I/61dOfc412nL._UL1000_.jpg",
                title:"Long Maxi fashion dress",
                price:"₹ 1,800",
                 text:"Style : Classic"
               ),
                 _Item(
                image:"https://m.media-amazon.com/images/I/71yl5mKbEnL._SL1500_.jpg",
                title:"Skincare Bio Oil",
                price:"₹ 999",
                 text:"Scent : Lavender, Chamomile"
               ),
                 _Item(
                image:"https://m.media-amazon.com/images/I/91VqGz-isPL._UX569_.jpg",
                title:"Polarized Sunglasses",
                price:"₹ 3,573",
                 text:"About : 100% UV400 Protection",
               ),
              _Item(
                image: "https://m.media-amazon.com/images/I/51gfkdDKYOL._SX425_.jpg", 
                title: "Nirlon water bottle", 
                price:  "₹636", 
                text: "Capacity : 1000 Milliliters"
                )
              ],
            ),
           ),
            ),
        ],
      ),
    );
  }
}
class _Item extends StatelessWidget {
  const _Item({super.key, required this.image, required this.title, required this.price, required this.text,});
  final String image;
  final String title;
  final String price; 
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 350,
        color: Colors.white,
        width: double.infinity,
        child: Row(
          children: [
               Flexible(
                flex: 4,
                child: DecoratedBox(
                  decoration: const BoxDecoration(
                      
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                           Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left:10.0,top: 60),
                              child: Image.network(image,width: 160,),),
                           Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children:<Widget> [
                                Padding(
                                  padding: const EdgeInsets.only(left:30,top: 30),
                                  child: Text(title,textAlign: TextAlign.end,
                                  style: const TextStyle(fontSize: 20),
                                  ),
                                ),
                               const SizedBox(height: 23,),
                                Padding(
                                  padding: const EdgeInsets.only(left:30.0),
                                  child: Text(price,style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20
                                      ),),
                                ),
                                const SizedBox(height: 10,),
                              
                                Padding(
                                  padding: const EdgeInsets.only(left:30.0),
                                  child: Text(text,style: const TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14
                                      ),),
                                ),
                                const SizedBox(height:10,),
                                const Padding(
                                  padding: EdgeInsets.only(left:30.0),
                                  child: Text("Eligible for FREE shipping",style: TextStyle(
                                      fontSize: 14
                                      ),),
                                ),
                                const SizedBox(height:7,),
                                const Padding(
                                  padding: EdgeInsets.only(left:30.0),
                                  child: Text("In stock",style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.green
                                      ),),
                                ),
                              
                            
                              ],
                              
                            ),
                          ],
                        ),     
                              
                           
                        const SizedBox(height: 20,),       
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal:10.0),
                        child: Expanded(
                          flex: 3,
                          child:Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: CustomSquareButton(
                                  child:const Icon(Icons.remove) , 
                                  onPressed: (){}, 
                                  color: Colors.grey[500]!, 
                                  dimension: 40,
                                  ),
                              ),
                                Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: CustomSquareButton(
                                  child:const Text("1") , 
                                  onPressed: (){}, 
                                  color: const Color.fromARGB(255, 255, 255, 255), 
                                  dimension: 40
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: CustomSquareButton(
                                  child:const Icon(Icons.add) , 
                                  onPressed: (){}, 
                                  color: Colors.grey[500]!, 
                                  dimension: 40
                                  ),
                                ),
                                const SizedBox(width: 20,),
                                 Container(
                                  height: 37,
                                  width: 80,
                                   child: ElevatedButton(
                                child: const Text("Delete",style: TextStyle(color: Colors.black),),
                                onPressed: (){},      
                                style:ButtonStyle(
                                    padding: MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.all(5)),
                                    backgroundColor: MaterialStateProperty.all(Colors.white),
                                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                               side: const BorderSide(color: Color.fromARGB(255, 224, 223, 223),
                               
                                
                               )
                          )
                       )
                                )
                               ),
                                 ),
                                  const SizedBox(width: 20,),
                                  Container(
                                  height: 37,
                                  width: 140,
                                   child: ElevatedButton(
                                child: const Text("See More Like This",style: TextStyle(color: Colors.black),),
                                onPressed: (){},      
                                style:ButtonStyle(
                                    padding: MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.all(5)),
                                    backgroundColor: MaterialStateProperty.all(Colors.white),
                                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                               side: const BorderSide(color: Color.fromARGB(255, 224, 223, 223),
                               
                                
                               )
                          )
                       )
                                )
                               ),
                                 )
                            ],
                          )
                        ),
                      )          
                    ],
                  ),
                )
                )
          ],
        ),
      ),
    );
  }
}
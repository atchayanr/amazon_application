import 'package:amazon_application/Screens/cart_screen.dart';
import 'package:amazon_application/Screens/home_screen.dart';
import 'package:amazon_application/Screens/more_screen.dart';
import 'package:flutter/material.dart';

import '../Screens/account_screen.dart';
import '../widgets/products.dart';

const double kAppBarHeight = 80;

const String amazonLogoUrl =
    "https://upload.wikimedia.org/wikipedia/commons/thumb/4/4a/Amazon_icon.svg/2500px-Amazon_icon.svg.png";

const String amazonLogo =
    "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a9/Amazon_logo.svg/2560px-Amazon_logo.svg.png";



const List<Widget> screens = [
  HomeScreen(),
  AccountScreen(),
  CartScreen(),
  MoreScreen()
];
const List<String> categoriesList = [
  "Prime",
  "Mobiles",
  "Fashion",
  "Electronics",
  "Home",
  "Fresh",
  "Appliances",
  "Books, Toys",
  "Essential"
];
const List<String> categoryLogos = [
  "https://m.media-amazon.com/images/I/11uufjN3lYL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/116KbsvwCRL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/115yueUc1aL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/11qyfRJvEbL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/11BIyKooluL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/11CR97WoieL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/01cPTp7SLWL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/11yLyO9f9ZL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/11M0jYc-tRL._SX90_SY90_.png",
];
const List<String> bannerAd1 = [
  "/images/fashion.jpg",
  "/images/mobile.png",
  "/images/echo.png",
  "/images/straightener.jpg",
  "/images/shoes2.png",
  "/images/groccery.png",
];
const List<String> smallAds = [
  "https://m.media-amazon.com/images/I/11M5KkkmavL._SS70_.png",
  "https://m.media-amazon.com/images/I/11iTpTDy6TL._SS70_.png",
  "https://m.media-amazon.com/images/I/11dGLeeNRcL._SS70_.png",
  "https://m.media-amazon.com/images/I/11kOjZtNhnL._SS70_.png",
];

const List<String> adItemNames = [
  "Amazon Pay",
  "Recharge",
  "Rewards",
  "Pay Bills"
];

const List<Widget> yourOrders = [

  Products(url: "/images/deals4.jpg"),
  Products(url: "/images/top2.png"),
 Products(url: "/images/deals2.jpg"),
  Products(url: "/images/kitchen1.png"),
 Products(url: "/images/deals1.jpg"),
];


const List<String> moreCategoryList = [
 "https://m.media-amazon.com/images/G/01/sell/images/prime-boxes/prime-boxes-2-sm._SL1280_FMpng_.png",
 "https://i1.wp.com/mercadoeconsumo.com.br/wp-content/uploads/2018/12/Brasileiros-usam-sites-de-ofertas-para-comprar-ingressos.jpg",
 "https://d2d22nphq0yz8t.cloudfront.net/88e6cc4b-eaa1-4053-af65-563d88ba8b26/https://media.croma.com/image/upload/v1662443638/Croma%20Assets/Communication/Mobiles/Images/251802_on6al4.png/mxw_640,f_auto",
 "https://images-eu.ssl-images-amazon.com/images/G/02/AmazonFresh/Dabba/Testing/filename_9cecykpnochobanibroccoli.jpg",
 "https://www.pinkvilla.com/files/styles/amp_metadata_content_image/public/unknown-83.jpeg",
 "https://m.media-amazon.com/images/I/51d+PgAtmUL._SY407_BO1,204,203,200_.jpg",
"https://s3b.cashify.in/gpro/uploads/2021/09/01111508/Amazon-pay.jpg",
"https://m.media-amazon.com/images/I/818Xr8h2C4L._SL1500_.jpg",
"https://tinuiti.com/wp-content/uploads/2019/09/FBA-fees-e1522429678484.png"
] ;
const List<String> categoryLists = [
  "Prime",
  "Deals and savings",
  "Mobiles and electronics",
  "Grocceries",
  "Fashion and beauty",
  "Books and education",
  "Payments and Bookings",
  "Gifting ",
   "Your Things"
];

const List<String> results =[
  "https://download.logo.wine/logo/Amazon_Prime/Amazon_Prime-Logo.wine.png",
  "https://www.androidauthority.com/wp-content/uploads/2021/11/Prime-video-logo.jpg",
  "https://i.gadgets360cdn.com/large/amazon_prime_reading_small_1537857208492.jpg",
  "https://www.pngplay.com/wp-content/uploads/3/Amazon-Prime-Music-Logo-Transparent-File.png"
];

const List<String> productsCategory =[
  "/images/prod1.png",
  "/images/prod2.png",
  "/images/prod3.png",
  "/images/prod4.png",
  "/images/prod5.png",
  "/images/prod6.png",
  "/images/prod7.png",
  "/images/prod8.png",
  "/images/prod9.png",
  "/images/prod10.png",
  "/images/prod11.png",
  "/images/prod12.png"
];

const List<String> productsList = [
  "prod1",
  "prod2",
  "prod3",
  "prod4",
  "prod5",
  "prod6",
  "prod7",
  "prod8",
  "prod9",
  "prod10",
  "prod11",
  "prod12",

];

const List<String> productsCategory2 =[
  "/images/img1.png",
  "/images/img2.png",
  "/images/img3.png",
  "/images/img4.png",
  "/images/img5.png",
  "/images/img6.png",
  "/images/img7.png",
  "/images/img8.png",
  
];

const List<String> productsList2 = [
  "img1",
  "img2",
  "img3",
  "img4",
  "img5",
  "img6",
  "img7",
  "img8",
];

const List<String> productsCategory3 =[
  "/images/off1.png",
  "/images/off2.png",
  "/images/off3.png",
  "/images/off4.png",
  "/images/off5.png",
  "/images/off6.png",
  "/images/off7.png",
  "/images/off8.png",
  "/images/off9.png",
  "/images/off10.png",

  
];

const List<String> productsList3 = [
  "img1",
  "img2",
  "img3",
  "img4",
  "img5",
  "img6",
  "img7",
  "img8",
  "img9",
  "img10",
];
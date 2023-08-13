// // import 'package:flutter/cupertino.dart';

// // class HomePage extends StatelessWidget {
// //   const HomePage({Key? key}) : super(key: key);

// //   @override
// //   Widget build(BuildContext context) {
// //     final screenWidth = MediaQuery.of(context).size.width;

// //     bool showDrawer = screenWidth > 710.0;

// //     return CupertinoPageScaffold(
// //       navigationBar: CupertinoNavigationBar(
// //         leading: Padding(
// //           padding: const EdgeInsets.symmetric(horizontal: 10.0),
// //           child: Image.asset(
// //             'assets/images/dsltech.png',
// //             height: 40,
// //           ),
// //         ),
// //         middle: const Text('Home'),
// //         trailing: showDrawer
// //             ? null
// //             : IconButton(
// //                 icon: const Icon(CupertinoIcons.bars),
// //                 onPressed: () {
// //                   Scaffold.of(context).openDrawer();
// //                 },
// //               ),
// //       ),
// //       drawer: showDrawer
// //           ? null
// //           : CupertinoDrawer(
// //               child: ListView(
// //                 padding: EdgeInsets.zero,
// //                 children: [
// //                   DrawerHeader(
// //                     decoration: const BoxDecoration(
// //                       color: CupertinoColors.systemGrey,
// //                     ),
// //                     child: Image.asset(
// //                       'assets/images/dsltechserv.png',
// //                       height: 64,
// //                     ),
// //                   ),
// //                   ListTile(
// //                     title: const Text('Services'),
// //                     onTap: () {
// //                       Navigator.push(
// //                         context,
// //                         CupertinoPageRoute(
// //                           builder: (context) => ServiciosScreen(),
// //                         ),
// //                       );
// //                     },
// //                   ),
// //                   ListTile(
// //                     title: const Text('About'),
// //                     onTap: () {
// //                       Navigator.push(
// //                         context,
// //                         CupertinoPageRoute(
// //                           builder: (context) => ProductosScreen(),
// //                         ),
// //                       );
// //                     },
// //                   ),
// //                   ListTile(
// //                     title: const Text('Contact Us'),
// //                     onTap: () {
// //                       Navigator.push(
// //                         context,
// //                         CupertinoPageRoute(
// //                           builder: (context) => ContactScreen(),
// //                         ),
// //                       );
// //                     },
// //                   ),
// //                   const SizedBox(width: 20.0),
// //                 ],
// //               ),
// //             ),
// //       child: ListView(
// //         padding: EdgeInsets.zero,
// //         children: [
// //           Container(
// //             height: 619,
// //             width: double.infinity,
// //             decoration: const BoxDecoration(
// //               image: DecorationImage(
// //                 image: NetworkImage('https://picsum.photos/1240/619'),
// //                 fit: BoxFit.cover,
// //               ),
// //             ),
// //             child: Column(
// //               mainAxisAlignment: MainAxisAlignment.center,
// //               children: [
// //                 const Padding(
// //                   padding: EdgeInsets.all(8.0),
// //                   child: Text(
// //                     'Welcome to DSLTech',
// //                     style: TextStyle(
// //                       fontSize: 50,
// //                       fontWeight: FontWeight.bold,
// //                       color: CupertinoColors.white,
// //                     ),
// //                     textAlign: TextAlign.center,
// //                   ),
// //                 ),
// //                 const SizedBox(height: 30),
// //                 const Padding(
// //                   padding: EdgeInsets.all(10.0),
// //                   child: Text(
// //                     'We build stunning apps for your business',
// //                     style: TextStyle(
// //                       fontSize: 30,
// //                       color: CupertinoColors.white,
// //                     ),
// //                   ),
// //                 ),
// //                 const SizedBox(height: 50),
// //                 CupertinoButton(
// //                   onPressed: () {
// //                     Navigator.push(
// //                       context,
// //                       CupertinoPageRoute(
// //                         builder: (context) => ServiciosScreen(),
// //                       ),
// //                     );
// //                   },
// //                   color: CupertinoColors.white,
// //                   padding:
// //                       const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
// //                   borderRadius: BorderRadius.circular(30),
// //                   child: const Text(
// //                     'Our Services',
// //                     style: TextStyle(fontSize: 20),
// //                   ),
// //                 ),
// //               ],
// //             ),
// //           ),
// //           Container(
// //             padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
// //             color: CupertinoColors.systemGrey3,
// //             child: Column(
// //               crossAxisAlignment: CrossAxisAlignment.start,
// //               children: [
// //                 const Text(
// //                   'About DSLTech',
// //                   style: TextStyle(
// //                     fontSize: 44,
// //                     fontWeight: FontWeight.bold,
// //                     color: CupertinoColors.systemGrey,
// //                   ),
// //                 ),
// //                 const SizedBox(height: 30),
// //                 Text(
// //                   'DSLTech is a software development company that specializes in building high-quality, customized mobile and web applications for businesses of all sizes. Our team of experienced developers and designers work closely with our clients to create custom solutions that meet their unique needs and exceed their expectations.',
// //                   style: TextStyle(
// //                     fontSize: 20,
// //                     color: CupertinoColors.darkGray,
// //                   ),
// //                 ),
// //                 const SizedBox(height: 20),
// //                 const Text(
// //                   'Greetings, planet!',
// //                   style: TextStyle(
// //                     fontSize: 16,
// //                     color: CupertinoColors.systemGrey2,
// //                   ),
// //                 ),
// //                 const SizedBox(height: 20),
// //                 CupertinoButton(
// //                   onPressed: () {
// //                     Navigator.push(
// //                       context,
// //                       CupertinoPageRoute(
// //                         builder: (context) => ProductosScreen(),
// //                       ),
// //                     );
// //                   },
// //                   color: CupertinoColors.white,
// //                   padding:
// //                       const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
// //                   borderRadius: BorderRadius.circular(30),
// //                   child: const Text(
// //                     'Get started',
// //                     style: TextStyle(fontSize: 18),
// //                   ),
// //                 ),
// //               ],
// //             ),
// //           ),
// //           Padding(
// //             padding: const EdgeInsets.all(17.0),
// //             child: Center(
// //               child: Image.asset(
// //                 'assets/images/dsltechserv.png',
// //                 height: 280,
// //               ),
// //             ),
// //           ),
// //           const SizedBox(height: 20),
// //           const SizedBox(height: 20),
// //           const SizedBox(height: 30),
// //           const Center(
// //             child: Padding(
// //               padding: EdgeInsets.all(8.0),
// //               child: Text(
// //                 'Lo que nuestros clientes dicen',
// //                 textAlign: TextAlign.center,
// //                 style: TextStyle(
// //                   fontSize: 30,
// //                   fontWeight: FontWeight.bold,
// //                 ),
// //               ),
// //             ),
// //           ),
// //           const SizedBox(height: 20),
// //           const ContactButton(),
// //           const SizedBox(height: 30),
// //           Container(
// //             padding: const EdgeInsets.all(8.0),
// //             color: CupertinoColors.activeBlue,
// //             child: ContactForm(),
// //           ),
// //           Padding(
// //             padding: const EdgeInsets.all(17.0),
// //             child: Center(
// //               child: Image.asset(
// //                 'assets/images/dsltechserv.png',
// //                 height: 280,
// //               ),
// //             ),
// //           ),
// //           const SizedBox(height: 20),
// //           const SizedBox(height: 20),
// //           const SizedBox(height: 30),
// //           const SizedBox(height: 30),
// //           Footer(),
// //           UFooter(),
// //         ],
// //       ),
// //     );
// //   }
// // }

// // class ContactButton extends StatelessWidget {
// //   const ContactButton({Key? key}) : super(key: key);

// //   @override
// //   Widget build(BuildContext context) {
// //     return Center(
// //       child: Card(
// //         child: Padding(
// //           padding: const EdgeInsets.all(20.0),
// //           child: Column(
// //             children: [
// //               const Text(
// //                 'Contáctanos',
// //                 style: TextStyle(
// //                   fontSize: 30,
// //                   fontWeight: FontWeight.bold,
// //                 ),
// //               ),
// //               const SizedBox(height: 20),
// //               const Text(
// //                 '¿Tienes alguna pregunta o necesitas más información? ¡Escríbenos!',
// //                 style: TextStyle(
// //                   fontSize: 16,
// //                 ),
// //                 textAlign: TextAlign.center,
// //               ),
// //               const SizedBox(height: 10),
// //               CupertinoButton(
// //                 onPressed: () {
// //                   Navigator.push(
// //                     context,
// //                     CupertinoPageRoute(
// //                       builder: (context) => ContactPage(),
// //                     ),
// //                   );
// //                 },
// //                 color: CupertinoColors.activeBlue,
// //                 padding:
// //                     const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
// //                 borderRadius: BorderRadius.circular(30),
// //                 child: const Text(
// //                   'Contactar',
// //                   style: TextStyle(
// //                     color: CupertinoColors.white,
// //                   ),
// //                 ),
// //               ),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }


// bool showDrawer = false;
// const double widthThreshold = 710.0;
// final scaffoldKey = GlobalKey<ScaffoldState>();

// if (screenWidth > widthThreshold) {
//   showDrawer = true;
// } else {
//   showDrawer = false;
// }

// return Scaffold(
//   key: scaffoldKey,
//   appBar: AppBar(
//     leading: Padding(
//       padding: EdgeInsets.zero.add(const EdgeInsets.symmetric(horizontal: 10.0)),
//       child: Image.asset(
//         'assets/images/dsltech.png',
//         height: 40,
//       ),
//     ),
//     actions: showDrawer
//         ? [
//             CupertinoButton(
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   CupertinoPageRoute(
//                     builder: (context) => const ServiciosScreen(),
//                   ),
//                 );
//               },
//               child: Text(
//                 'Services',
//                 style: TextStyle(
//                   color: CupertinoColors.systemGrey,
//                   fontSize: 18,
//                   fontWeight: FontWeight.w500,
//                 ),
//               ),
//             ),
//             SizedBox(width: 30),
//             CupertinoButton(
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   CupertinoPageRoute(
//                     builder: (context) => const ProductosScreen(),
//                   ),
//                 );
//               },
//               child: Text(
//                 'About',
//                 style: TextStyle(
//                   color: CupertinoColors.systemGrey,
//                   fontSize: 18,
//                   fontWeight: FontWeight.w500,
//                 ),
//               ),
//             ),
//             SizedBox(width: 30),
//             CupertinoButton(
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   CupertinoPageRoute(
//                     builder: (context) => const ContactScreen(),
//                   ),
//                 );
//               },
//               color: Constants.blueColor,
//               padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//               borderRadius: BorderRadius.circular(30),
//               child: const Text(
//                 'Contact Us',
//                 style: TextStyle(
//                   fontSize: 18,
//                   fontWeight: FontWeight.w500,
//                 ),
//               ),
//             ),
//           ]
//         : [
//             IconButton(
//               icon: Icon(Icons.menu),
//               onPressed: () {
//                 scaffoldKey.currentState?.openDrawer();
//               },
//             ),
//           ],
//   ),
//   drawer: Drawer(
//     child: ListView(
//       padding: EdgeInsets.zero,
//       children: [
//         Padding(
//           padding: EdgeInsets.zero.add(const EdgeInsets.symmetric(horizontal: 10.0, vertical: 31.0)),
//           child: Image.asset(
//             'assets/images/dsltechserv.png',
//             height: 64,
//           ),
//         ),
//         ListTile(
//           title: const Text('Services'),
//           onTap: () {
//             Navigator.push(
//               context,
//               CupertinoPageRoute(
//                 builder: (context) => const ServiciosScreen(),
//               ),
//             );
//           },
//         ),
//         ListTile(
//           title: const Text('About'),
//           onTap: () {
//             Navigator.push(
//               context,
//               CupertinoPageRoute(
//                 builder: (context) => const ProductosScreen(),
//               ),
//             );
//           },
//         ),
//         ListTile(
//           title: const Text('Contact Us'),
//           onTap: () {
//             Navigator.push(
//               context,
//               CupertinoPageRoute(
//                 builder: (context) => const ContactScreen(),
//               ),
//             );
//           },
//         ),
//         SizedBox(width: 20.0),
//       ],
//     ),
//   ),
//   body: CustomScrollView(
//     slivers: [
//       CupertinoSliverNavigationBar(
//         leading: Padding(
//           padding: EdgeInsets.zero.add(const EdgeInsets.symmetric(horizontal: 10.0)),
//           child: Image.asset(
//             'assets/images/dsltech.png',
//             height: 40,
//           ),
//         ),
//         trailing: showDrawer
//             ? Row(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   CupertinoButton(
//                     onPressed: () {
//                       Navigator.push(
//                         context,
//                         CupertinoPageRoute(
//                           builder: (context) => const ServiciosScreen(),
//                         ),
//                       );
//                     },
//                     child: Text(
//                       'Services',
//                       style: TextStyle(
//                         color: CupertinoColors.systemGrey,
//                         fontSize: 18,
//                         fontWeight: FontWeight.w500,
//                       ),
//                     ),
//                   ),
//                   SizedBox(width: 30),
//                   CupertinoButton(
//                     onPressed: () {
//                       Navigator.push(
//                         context,
//                         CupertinoPageRoute(
//                           builder: (context) => const ProductosScreen(),
//                         ),
//                       );
//                     },
//                     child: Text(
//                       'About',
//                       style: TextStyle(
//                         color: CupertinoColors.systemGrey,
//                         fontSize: 18,
//                         fontWeight: FontWeight.w500,
//                       ),
//                     ),
//                   ),
//                   SizedBox(width: 30),
//                   CupertinoButton(
//                     onPressed: () {
//                       Navigator.push(
//                         context,
//                         CupertinoPageRoute(
//                           builder: (context) => const ContactScreen(),
//                         ),
//                       );
//                     },
//                     color: Constants.blueColor,
//                     padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//                     borderRadius: BorderRadius.circular(30),
//                     child: const Text(
//                       'Contact Us',
//                       style: TextStyle(
//                         fontSize: 18,
//                         fontWeight: FontWeight.w500,
//                       ),
//                     ),
//                   ),
//                 ],
//               )
//             : IconButton(
//                 icon: Icon(Icons.menu),
//                 onPressed: () {
//                   scaffoldKey.currentState?.openDrawer();
//                 },
//               ),
//       ),
//       SliverFillRemaining(
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Container(
//                 height: 619,
//                 width: double.infinity,
//                 decoration: const BoxDecoration(
//                   image: DecorationImage(
//                     image: NetworkImage('https://picsum.photos/1240/619'),
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     const Padding(
//                       padding: EdgeInsets.all(8.0),
//                       child: Text(
//                         'Welcome to DSLTech',
//                         style: TextStyle(
//                           fontSize: 50,
//                           fontWeight: FontWeight.bold,
//                           color: CupertinoColors.white,
//                         ),
//                         textAlign: TextAlign.center,
//                       ),
//                     ),
//                     const SizedBox(height: 30),
//                     const Padding(
//                       padding: EdgeInsets.all(10.0),
//                       child: Text(
//                         "We build stunning apps for your business",
//                         style: TextStyle(
//                           fontSize: 30,
//                           color: CupertinoColors.white,
//                         ),
//                       ),
//                     ),
//                     const SizedBox(height: 50),
//                     CupertinoButton(
//                       onPressed: () {
//                         Navigator.push(
//                           context,
//                           CupertinoPageRoute(
//                             builder: (context) => const ServiciosScreen(),
//                           ),
//                         );
//                       },
//                       color: Constants.primaryColor,
//                       padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
//                       borderRadius: BorderRadius.circular(30),
//                       child: const Text(
//                         'Our Services',
//                         style: TextStyle(fontSize: 20),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               Container(
//                 padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
//                 color: CupertinoColors.blueGrey,
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       'About Us',
//                       style: TextStyle(
//                         fontSize: 30,
//                         fontWeight: FontWeight.bold,
//                         color: CupertinoColors.white,
//                       ),
//                     ),
//                     const SizedBox(height: 20),
//                     Text(
//                       'We are a team of experienced developers and designers passionate about building high-quality mobile and web applications for businesses. Our goal is to help our clients achieve success by creating intuitive and visually appealing digital solutions.',
//                       style: TextStyle(
//                         fontSize: 16,
//                         color: CupertinoColors.white,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               Container(
//                 padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       'Our Services',
//                       style: TextStyle(
//                         fontSize: 30,
//                         fontWeight: FontWeight.bold,
//                         color: CupertinoColors.black,
//                       ),
//                     ),
//                     const SizedBox(height: 20),
//                     Row(
//                       children: [
//                         Expanded(
//                           child: ServiceCard(
//                             iconData: Icons.developer_mode,
//                             title: 'Mobile App Development',
//                             description:
//                                 'We specialize in building native and cross-platform mobile applications for iOS and Android devices. Our team utilizes the latest technologies and frameworks to deliver highly performant and user-friendly apps.',
//                           ),
//                         ),
//                         Expanded(
//                           child: ServiceCard(
//                             iconData: Icons.web,
//                             title: 'Web Development',
//                             description:
//                                 'We offer custom web development services tailored to your business needs. Whether it\'s a corporate website, e-commerce platform, or web application, we have the expertise to create robust and scalable solutions.',
//                           ),
//                         ),
//                       ],
//                     ),
//                     const SizedBox(height: 30),
//                     Row(
//                       children: [
//                         Expanded(
//                           child: ServiceCard(
//                             iconData: Icons.design_services,
//                             title: 'UI/UX Design',
//                             description:
//                                 'Our design team is dedicated to creating engaging and visually stunning user interfaces. We focus on delivering seamless user experiences through intuitive layouts, captivating visuals, and interactive elements.',
//                           ),
//                         ),
//                         Expanded(
//                           child: ServiceCard(
//                             iconData: Icons.cloud,
//                             title: 'Cloud Solutions',
//                             description:
//                                 'We provide cloud computing solutions to optimize your business processes and enhance scalability. From cloud migration to cloud-native application development, we help you leverage the power of the cloud.',
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//               Container(
//                 padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
//                 color: CupertinoColors.blueGrey,
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       'Contact Us',
//                       style: TextStyle(
//                         fontSize: 30,
//                         fontWeight: FontWeight.bold,
//                         color: CupertinoColors.white,
//                       ),
//                     ),
//                     const SizedBox(height: 20),
//                     Text(
//                       'Have a project in mind or need assistance? Get in touch with us!',
//                       style: TextStyle(
//                         fontSize: 16,
//                         color: CupertinoColors.white,
//                       ),
//                     ),
//                     const SizedBox(height: 30),
//                     CupertinoButton(
//                       onPressed: () {
//                         Navigator.push(
//                           context,
//                           CupertinoPageRoute(
//                             builder: (context) => const ContactScreen(),
//                           ),
//                         );
//                       },
//                       color: Constants.primaryColor,
//                       padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
//                       borderRadius: BorderRadius.circular(30),
//                       child: const Text(
//                         'Contact Us',
//                         style: TextStyle(fontSize: 20),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     ],
//   ),
// );

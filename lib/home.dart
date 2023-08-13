import 'package:dominicsltns/constants.dart';
import 'package:dominicsltns/scetions.dart';
import 'package:flutter/cupertino.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    bool showDrawer = false;
// final scaffoldKey = GlobalKey<ScaffoldState>();
    if (MediaQuery.of(context).size.width > 700) {
      showDrawer = true;
    } else {
      showDrawer = false;
    }
    return CupertinoPageScaffold(
      // navigationBar: const CupertinoNavigationBar(
      //   middle: Text('Dominic Sltns'),
      // ),
      child: CustomScrollView(
        slivers: [
          CupertinoSliverNavigationBar(
            leading: Padding(
              padding: EdgeInsets.zero
                  .add(const EdgeInsets.symmetric(horizontal: 10.0)),
              child: Image.asset(
                'assets/DALL·E 2023-05-16 10.54.14 - Dominic Sltns with the vice city letter style.png',
                height: 40,
              ),
            ),
            trailing: showDrawer
                ? Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CupertinoButton(
                        onPressed: () {
                          // Navigator.push(
                          //   context,
                          //   CupertinoPageRoute(
                          //     builder: (context) => const ServicesScreen(),
                          //   ),
                          // );
                        },
                        child: const Text(
                          'Servicios',
                          style: TextStyle(
                            color: CupertinoColors.systemGrey,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      const SizedBox(width: 30),
                      CupertinoButton(
                        onPressed: () {
                          // Navigator.push(
                          //   context,
                          //   CupertinoPageRoute(
                          //     builder: (context) => const NosotrosScreen(),
                          //   ),
                          // );
                        },
                        child: const Text(
                          'Acerca de',
                          style: TextStyle(
                            color: CupertinoColors.systemGrey,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      const SizedBox(width: 30),
                      CupertinoButton(
                        onPressed: () {
                          // Navigator.push(
                          //   context,
                          //   CupertinoPageRoute(
                          //     builder: (context) => const ContactoScreen(),
                          //   ),
                          // );
                        },
                        color: Constants.blueColor,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        borderRadius: BorderRadius.circular(30),
                        child: const Text(
                          'Contáctanos',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  )
                : CupertinoButton(
                    child: const Icon(CupertinoIcons.memories_badge_minus),
                    onPressed: () {
                      // scaffoldKey.currentState?.openDrawer();
                    },
                  ),
          ),
          SliverFillRemaining(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 619,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/dominic_banner.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Bienvenido a Dominic Solutions',
                            style: TextStyle(
                              fontSize: 50,
                              fontWeight: FontWeight.bold,
                              color: CupertinoColors.white,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(height: 30),
                        const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text(
                            "Creamos soluciones tecnológicas para tu negocio",
                            style: TextStyle(
                              fontSize: 30,
                              color: CupertinoColors.white,
                            ),
                          ),
                        ),
                        const SizedBox(height: 50),
                        CupertinoButton(
                          onPressed: () {
                            // Navigator.push(
                            //   context,
                            //   CupertinoPageRoute(
                            //     builder: (context) => const ServicesScreen(),
                            //   ),
                            // );
                          },
                          color: Constants.primaryColor,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 30, vertical: 15),
                          borderRadius: BorderRadius.circular(30),
                          child: const Text(
                            'Nuestros Servicios',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 50),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Acerca de Nosotros',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: CupertinoColors.black,
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Somos un equipo de desarrolladores y diseñadores con experiencia apasionados por construir aplicaciones móviles y web de alta calidad para negocios. Nuestro objetivo es ayudar a nuestros clientes a alcanzar el éxito creando soluciones digitales intuitivas y visualmente atractivas.',
                          style: TextStyle(
                            fontSize: 16,
                            color: CupertinoColors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Container(
                  //   padding: const EdgeInsets.symmetric(
                  //       horizontal: 20, vertical: 50),
                  //   child: Column(
                  //     crossAxisAlignment: CrossAxisAlignment.start,
                  //     children: [
                  //       const Text(
                  //         'Nuestros Servicios',
                  //         style: TextStyle(
                  //           fontSize: 30,
                  //           fontWeight: FontWeight.bold,
                  //           color: CupertinoColors.black,
                  //         ),
                  //       ),
                  //       const SizedBox(height: 20),
                  //       Row(
                  //         children: [
                  //           // Expanded(
                  //           //   child: ServiceCard(
                  //           //     iconData: CupertinoIcons.developer_mode,
                  //           //     title: 'Desarrollo de aplicaciones móviles',
                  //           //     description:
                  //           //         'Nos especializamos en la construcción de aplicaciones móviles nativas y multiplataforma para dispositivos iOS y Android. Nuestro equipo utiliza las últimas tecnologías y marcos de trabajo para ofrecer aplicaciones altamente eficientes y fáciles de usar.',
                  //           //   ),
                  //           // ),
                  //           // Expanded(
                  //           //   child: ServiceCard(
                  //           //     iconData: CupertinoIcons.web,
                  //           //     title: 'Desarrollo web',
                  //           //     description:
                  //           //         'Ofrecemos servicios de desarrollo web personalizados según las necesidades de tu negocio. Ya sea un sitio web corporativo, una plataforma de comercio electrónico o una aplicación web, tenemos la experiencia para crear soluciones robustas y escalables.',
                  //           //   ),
                  //           // ),
                  //         ],
                  //       ),
                  //       const SizedBox(height: 30),
                  //       Row(
                  //         children: [
                  //           // Expanded(
                  //           //   child: ServiceCard(
                  //           //     iconData: CupertinoIcons.design_services,
                  //           //     title: 'Diseño UI/UX',
                  //           //     description:
                  //           //         'Nuestro equipo de diseño se dedica a crear interfaces de usuario atractivas y visualmente impactantes. Nos enfocamos en brindar experiencias de usuario perfectas a través de diseños intuitivos, visuales cautivadores y elementos interactivos.',
                  //           //   ),
                  //           // ),
                  //           // Expanded(
                  //           //   child: ServiceCard(
                  //           //     iconData: CupertinoIcons.cloud,
                  //           //     title: 'Soluciones en la nube',
                  //           //     description:
                  //           //         'Brindamos soluciones de computación en la nube para optimizar los procesos de tu negocio y mejorar la escalabilidad. Desde migraciones a la nube hasta desarrollo de aplicaciones nativas en la nube, te ayudamos a aprovechar el poder de la nube.',
                  //           //   ),
                  //           // ),
                  //         ],
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 50),
                    color: CupertinoColors.systemPink,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Contáctanos',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: CupertinoColors.white,
                          ),
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          '¿Tienes un proyecto en mente o alguna pregunta? ¡No dudes en ponerte en contacto con nosotros!',
                          style: TextStyle(
                            fontSize: 16,
                            color: CupertinoColors.white,
                          ),
                        ),
                        const SizedBox(height: 30),
                        CupertinoButton(
                          onPressed: () {
                            // Navigator.push(
                            //   context,
                            //   CupertinoPageRoute(
                            //     builder: (context) => const ContactoScreen(),
                            //   ),
                            // );
                          },
                          color: Constants.primaryColor,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 30, vertical: 15),
                          borderRadius: BorderRadius.circular(30),
                          child: const Text(
                            'Enviar mensaje',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const ServicesSection(),
                  const ProductsSection(),
                  const ReviewsSection(),
                  const ContactSection(),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CupertinoButton(
                          child: const Icon(CupertinoIcons.book),
                          onPressed: () {},
                        ),
                        CupertinoButton(
                          child: const Icon(CupertinoIcons.tray_arrow_down),
                          onPressed: () {},
                        ),
                        CupertinoButton(
                          child: const Icon(CupertinoIcons.camera),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

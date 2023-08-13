import 'package:flutter/cupertino.dart';

class ServicesSectione extends StatelessWidget {
  const ServicesSectione({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Nuestros Servicios',
              style: CupertinoTheme.of(context).textTheme.navTitleTextStyle,
            ),
            const SizedBox(height: 10),
            Text(
              'Ofrecemos una amplia gama de servicios de tecnología para satisfacer tus necesidades:',
              style: CupertinoTheme.of(context).textTheme.textStyle,
            ),
            const SizedBox(height: 10),
            Text(
              '• Desarrollo de aplicaciones móviles\n'
              '• Desarrollo web\n'
              '• Consultoría en tecnología\n'
              '• Diseño de interfaces de usuario',
              style: CupertinoTheme.of(context).textTheme.textStyle,
            ),
          ],
        ),
      ),
    );
  }
}

class ProductsSection extends StatelessWidget {
  const ProductsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Nuestros Productos',
              style: CupertinoTheme.of(context).textTheme.navTitleTextStyle,
            ),
            const SizedBox(height: 10),
            Text(
              'Explora nuestros productos tecnológicos de vanguardia:',
              style: CupertinoTheme.of(context).textTheme.textStyle,
            ),
            const SizedBox(height: 10),
            Text(
              '• Dispositivos inteligentes\n'
              '• Soluciones de software personalizadas\n'
              '• Servicios en la nube',
              style: CupertinoTheme.of(context).textTheme.textStyle,
            ),
          ],
        ),
      ),
    );
  }
}

class ReviewsSection extends StatelessWidget {
  const ReviewsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Reseñas de nuestros clientes',
              style: CupertinoTheme.of(context).textTheme.navTitleTextStyle,
            ),
            const SizedBox(height: 10),
            CupertinoButton(
              child: const Text('Ver todas las reseñas'),
              onPressed: () {
                // Acción al hacer clic en "Ver todas las reseñas"
              },
            ),
            const SizedBox(height: 10),
            // Aquí puedes agregar un ListView o cualquier otro widget para mostrar las reseñas de los clientes.
          ],
        ),
      ),
    );
  }
}

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Contacto',
              style: CupertinoTheme.of(context).textTheme.navTitleTextStyle,
            ),
            const SizedBox(height: 10),
            Text(
              '¡Contáctanos para más información!',
              style: CupertinoTheme.of(context).textTheme.textStyle,
            ),
            const SizedBox(height: 10),
            CupertinoButton.filled(
              child: const Text('Enviar mensaje'),
              onPressed: () {
                // Acción al hacer clic en "Enviar mensaje"
              },
            ),
          ],
        ),
      ),
    );
  }
}
// En este ejemplo, se han agregado las secciones de "Nuestros Servicios" (ServicesSection), "Nuestros Productos" (ProductsSection), "Reseñas de nuestros clientes" (ReviewsSection) y "Contacto" (ContactSection). Cada sección se representa mediante un widget separado y se agrega al CustomScrollView en la página de inicio (HomePage). Puedes personalizar el contenido y los estilos de cada sección según tus necesidades.

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Our Services'),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Our Services',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'We offer a range of services to meet your technology needs. From mobile app development to web solutions, we have you covered.',
                style: TextStyle(
                  fontSize: 18,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              CupertinoButton(
                onPressed: () {
                  // Navigate to a detailed service page
                },
                child: const Text(
                  'Explore Services',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('About Us'),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'About Dominic Solutions',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'At Dominic Solutions, we are dedicated to delivering top-notch technology solutions. Our team of experts is committed to creating customized applications that drive business growth.',
                style: TextStyle(
                  fontSize: 18,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              CupertinoButton(
                onPressed: () {
                  // Navigate to more details about the company
                },
                child: const Text(
                  'Learn More',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ContactScreen extends StatelessWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Contact Us'),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Contact Us',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Have questions or need assistance? Our team is here to help. Reach out to us for any inquiries.',
                style: TextStyle(
                  fontSize: 18,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              CupertinoButton(
                onPressed: () {
                  // Open a contact form or email link
                },
                child: const Text(
                  'Get in Touch',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ServicesSection extends StatelessWidget {
  const ServicesSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 24.0,
      ),
      color: CupertinoColors.systemGrey6,
      child: Column(
        children: [
          const Text(
            'Our Services',
            style: TextStyle(
              fontSize: 28.0,
              fontWeight: FontWeight.w600,
              color: CupertinoColors.systemBlue,
              fontFamily: "SF Pro Display",
            ),
          ),
          const SizedBox(height: 12.0),
          screenWidth > 710
              ? CupertinoPicker(
                  itemExtent: 710,
                  onSelectedItemChanged: (int value) {},
                  children: const [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _ServiceCard(
                          icon: CupertinoIcons.briefcase_fill,
                          title: 'App Development',
                          description:
                              'We create high-quality mobile and web apps for both iOS and Android using the latest technologies and tools.',
                        ),
                        _ServiceCard(
                          icon: CupertinoIcons.globe,
                          title: 'Web Development',
                          description:
                              'Crafting responsive, fast, and user-friendly web applications tailored to our clients\' unique needs.',
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _ServiceCard(
                          icon: CupertinoIcons.hammer,
                          title: 'Custom Software',
                          description:
                              'Building tailor-made software solutions to meet specific business needs, ensuring efficiency and scalability.',
                        ),
                        _ServiceCard(
                          icon: CupertinoIcons.chart_bar_fill,
                          title: 'Analytics',
                          description:
                              'Providing comprehensive analytics and insights to help our clients make informed business decisions.',
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _ServiceCard(
                          icon: CupertinoIcons.wrench,
                          title: 'Embedded Development',
                          description:
                              'Specializing in developing embedded systems and firmware for various devices to ensure optimal performance and functionality.',
                        ),
                        _ServiceCard(
                          icon: CupertinoIcons.antenna_radiowaves_left_right,
                          title: 'IoT Solutions',
                          description:
                              'Designing and developing IoT solutions that connect devices, enabling smart functionality for enhanced automation and efficiency.',
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _ServiceCard(
                          icon: CupertinoIcons.cloud_fill,
                          title: 'Cloud Services',
                          description:
                              'Offering scalable and reliable cloud solutions using platforms like AWS, GCP, and Azure for optimized infrastructure.',
                        ),
                        _ServiceCard(
                          icon: CupertinoIcons.chart_pie_fill,
                          title: 'Technology Consulting',
                          description:
                              'Guiding businesses in leveraging technology to drive growth and innovation with our expert consultants.',
                        ),
                      ],
                    ),
                  ],
                )
              : CupertinoPicker(
                  itemExtent: 640,
                  onSelectedItemChanged: (int value) {},
                  children: const [
                    _ServiceCard(
                      icon: CupertinoIcons.briefcase_fill,
                      title: 'App Development',
                      description:
                          'We create high-quality mobile and web apps for both iOS and Android using the latest technologies and tools.',
                    ),
                    _ServiceCard(
                      icon: CupertinoIcons.globe,
                      title: 'Web Development',
                      description:
                          'Crafting responsive, fast, and user-friendly web applications tailored to our clients\' unique needs.',
                    ),
                    _ServiceCard(
                      icon: CupertinoIcons.hammer,
                      title: 'Custom Software',
                      description:
                          'Building tailor-made software solutions to meet specific business needs, ensuring efficiency and scalability.',
                    ),
                    _ServiceCard(
                      icon: CupertinoIcons.chart_bar_fill,
                      title: 'Analytics',
                      description:
                          'Providing comprehensive analytics and insights to help our clients make informed business decisions.',
                    ),
                    _ServiceCard(
                      icon: CupertinoIcons.wrench,
                      title: 'Embedded Development',
                      description:
                          'Specializing in developing embedded systems and firmware for various devices to ensure optimal performance and functionality.',
                    ),
                    _ServiceCard(
                      icon: CupertinoIcons.antenna_radiowaves_left_right,
                      title: 'IoT Solutions',
                      description:
                          'Designing and developing IoT solutions that connect devices, enabling smart functionality for enhanced automation and efficiency.',
                    ),
                    _ServiceCard(
                      icon: CupertinoIcons.cloud_fill,
                      title: 'Cloud Services',
                      description:
                          'Offering scalable and reliable cloud solutions using platforms like AWS, GCP, and Azure for optimized infrastructure.',
                    ),
                    _ServiceCard(
                      icon: CupertinoIcons.chart_pie_fill,
                      title: 'Technology Consulting',
                      description:
                          'Guiding businesses in leveraging technology to drive growth and innovation with our expert consultants.',
                    ),
                  ],
                ),
        ],
      ),
    );
  }
}

class _ServiceCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const _ServiceCard({
    Key? key,
    required this.icon,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      margin: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: CupertinoColors.white,
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
            color: CupertinoColors.black.withOpacity(0.1),
            blurRadius: 6.0,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 48.0,
              color: CupertinoColors.systemBlue,
            ),
            const SizedBox(height: 8.0),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
                color: CupertinoColors.systemBlue,
                fontFamily: "SF Pro Text",
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              description,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 14.0,
                color: CupertinoColors.black,
                fontFamily: "SF Pro Text",
              ),
            ),
          ],
        ),
      ),
    );
  }
}

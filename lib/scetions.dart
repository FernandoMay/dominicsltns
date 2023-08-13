import 'package:flutter/cupertino.dart';

class ServicesSection extends StatelessWidget {
  const ServicesSection({super.key});

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





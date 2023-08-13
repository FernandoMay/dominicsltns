import 'package:dominicsltns/constants.dart';
import 'package:dominicsltns/models.dart';
import 'package:flutter/cupertino.dart';
import 'package:url_launcher/url_launcher.dart';

bool par = DateTime.timestamp().day % 2 == 0 ? true : false;

class InicioScreen extends StatelessWidget {
  const InicioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 14),
          Text(
            '¡Bienvenido a DSL Tech!',
            // style: TextField.materialMisspelledTextStyle,
            // style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            style: TextStyle(
              fontSize: 40,
              foreground: Paint()
                ..style = PaintingStyle.stroke
                ..strokeWidth = 6
                ..color = Constants.primaryColor,
            ),
          ),
          const SizedBox(height: 14),
          const Text(
            'Explora y Descubre',
            // style: DefaultTextStyle.of(context).style,
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          const Text(
            'Descubre las últimas tendencias en telecomunicaciones, conectividad y tecnología a través de nuestro feed de noticias personalizado. Mantente actualizado con los avances más recientes en ciberseguridad, cloud computing, IoT y más.',
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          const Text(
            'Podrás explorar y descubrir las últimas tendencias en telecomunicaciones, conectividad y tecnología a través de nuestro feed de noticias personalizado. Mantente actualizado con los avances más recientes en ciberseguridad, cloud computing, IoT y más. Nuestro objetivo es brindarte información relevante y de calidad para que estés al tanto de las novedades en el mundo de la tecnología.',
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class ServiciosScreen extends StatelessWidget {
  const ServiciosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Servicios'),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Soluciones Personalizadas',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              const Text(
                'Explora nuestros servicios especializados en Telecomunicaciones, Conectividad, Internet Dedicado, Ciberseguridad, Cloud Computing y más. Descubre cómo nuestras soluciones pueden ayudarte a mejorar la eficiencia operativa, fortalecer la seguridad de tus datos y optimizar tus recursos tecnológicos.',
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 16),
              const Text(
                'Nuestros servicios incluyen:',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              CupertinoButton(
                onPressed: () {},
                child: const Row(
                  children: [
                    Icon(CupertinoIcons.checkmark),
                    Text('Telecomunicaciones'),
                  ],
                ),
              ),
              CupertinoButton(
                onPressed: () {},
                child: const Row(
                  children: [
                    Icon(CupertinoIcons.checkmark),
                    Text('Conectividad'),
                  ],
                ),
              ),
              CupertinoButton(
                onPressed: () {},
                child: const Row(
                  children: [
                    Icon(CupertinoIcons.checkmark),
                    Text('Internet Dedicado'),
                  ],
                ),
              ),
              CupertinoButton(
                onPressed: () {},
                child: const Row(children: [
                  Icon(CupertinoIcons.checkmark),
                  Text('Ciberseguridad'),
                ]),
              ),
              CupertinoButton(
                  onPressed: () {},
                  child: const Row(children: [
                    Icon(CupertinoIcons.checkmark),
                    Text('Cloud Computing'),
                  ])),
            ],
          ),
        ),
      ),
    );
  }
}

class BlogScreen extends StatelessWidget {
  BlogScreen({super.key});

  final List<String> titles = [
    'Cómo mejorar la conectividad en tu empresa',
    'Los beneficios de la inteligencia artificial en el servicio al cliente',
    'Developing a React Native app with Redux and focusing on infrastructure and scalability',
    'Rapid execution, learning from failure & building scale and reliability with Go',
  ];

  final List<String> articles = [
    '''
    La conectividad es un aspecto fundamental en cualquier empresa, ya que influye directamente en la productividad y eficiencia de las operaciones. En este artículo, exploraremos algunas estrategias y consejos para mejorar la conectividad en tu empresa y aprovechar al máximo las tecnologías de comunicación disponibles.

Actualiza tu infraestructura de red:

Implementa equipos y tecnologías de red de última generación para mejorar la velocidad y estabilidad de la conexión.
Considera la adopción de redes cableadas e inalámbricas de alta velocidad, como el estándar Wi-Fi 6.
Optimiza el ancho de banda:

Realiza un análisis de la demanda de ancho de banda en tu empresa y asegúrate de contar con suficiente capacidad para soportar todas las actividades.
Prioriza el tráfico de datos en función de la importancia y criticidad de las aplicaciones y servicios utilizados.
Utiliza soluciones de administración de red:

Implementa soluciones de monitoreo y gestión de red que te permitan identificar y solucionar problemas de conectividad de manera proactiva.
Supervisa el rendimiento de la red y optimiza su configuración para garantizar una conexión estable.
Considera la implementación de redes redundantes:

Configura sistemas de respaldo y rutas alternativas para evitar interrupciones en caso de fallos en la conexión principal.
Utiliza tecnologías como VPN (Virtual Private Network) para establecer conexiones seguras y confiables.
Capacita a tu equipo:

Proporciona capacitación y recursos a tu personal para que puedan aprovechar al máximo las herramientas de comunicación y colaboración disponibles.
Promueve buenas prácticas en el uso de la conectividad, como el uso seguro de contraseñas y la protección de datos sensibles.

Mejorar la conectividad en tu empresa es esencial para impulsar la productividad y eficiencia de tus operaciones. Siguiendo estos consejos y adoptando las tecnologías adecuadas, podrás aprovechar al máximo las ventajas de una conexión confiable y rápida.
    ''',
    '''
    La inteligencia artificial (IA) ha revolucionado la forma en que las empresas interactúan con sus clientes. En este artículo, exploraremos los beneficios de utilizar IA en el servicio al cliente y cómo implementar esta tecnología en tu empresa para mejorar la experiencia del cliente y optimizar los procesos de atención.

Automatización de tareas repetitivas:

Utiliza chatbots impulsados por IA para brindar respuestas rápidas y precisas a consultas comunes de los clientes.
Automatiza procesos de atención al cliente, como la emisión de tickets, seguimiento de casos y gestión de devoluciones.
Personalización y recomendaciones:

Utiliza algoritmos de IA para analizar el comportamiento del cliente y ofrecer recomendaciones personalizadas y relevantes.
Utiliza la IA para anticipar las necesidades del cliente y ofrecer soluciones proactivas.
Análisis de sentimientos y retroalimentación:

Utiliza técnicas de procesamiento de lenguaje natural (NLP) para analizar los sentimientos y emociones de los clientes en sus interacciones.
Utiliza esta información para identificar áreas de mejora y tomar acciones correctivas.
Mejora de la eficiencia operativa:

Utiliza IA para automatizar la asignación de tareas, programación de citas y gestión de recursos, lo que reduce los tiempos de respuesta y mejora la eficiencia del servicio al cliente.
Integración omnicanal:

Utiliza IA para proporcionar una experiencia de servicio al cliente consistente en diferentes canales, como chat en vivo, redes sociales, correo electrónico, entre otros.

La inteligencia artificial ofrece numerosos beneficios para mejorar el servicio al cliente. Al implementar estas tecnologías en tu empresa, podrás brindar experiencias más personalizadas, eficientes y satisfactorias para tus clientes, lo que se traducirá en lealtad y crecimiento empresarial.
    ''',
    '''
    When developing a React Native app with Redux and focusing on infrastructure and scalability, there are several important packages and concepts to consider. Here's a breakdown of each aspect:

React Native Hooks:

React Native Hooks, introduced in React Native version 0.59, allow you to use state and lifecycle features in functional components without using class components.
Hooks provide a more concise and readable code structure, making it easier to manage component state and side effects.
Commonly used React Native Hooks include useState, useEffect, useContext, and useRef.
Redux:

Redux is a popular state management library that helps manage the global state of your application.
It provides a centralized store that holds the state and allows you to update it using actions.
Key Redux concepts include actions, reducers, and the store.
Redux helps maintain a predictable state flow and facilitates the sharing of data between components.
Redux Thunk:

Redux Thunk is a middleware that allows you to write action creators that return functions instead of plain objects.
It enables you to handle asynchronous operations, such as API calls, within your actions.
Redux Thunk intercepts dispatched actions and provides a way to delay their execution or dispatch additional actions.
Redux Persist:

Redux Persist is a library that enables you to persist and rehydrate the Redux store, ensuring data persistence across app restarts.
It can be used to save the Redux store to local storage, AsyncStorage, or other storage solutions.
Redux Persist helps improve the user experience by maintaining the app's state between sessions.
React Navigation:

React Navigation is a popular navigation library for React Native apps.
It provides a flexible and customizable navigation solution, supporting various navigation patterns like stack, tab, drawer, and more.
React Navigation allows you to easily navigate between screens and manage the app's navigation state.
Axios:

Axios is a widely used HTTP client library that simplifies making API requests.
It provides an intuitive API for sending HTTP requests, handling request and response interceptors, and managing error handling and retries.
Axios supports both browser and Node.js environments, making it suitable for React Native apps.
Scalability and Infrastructure:

When building scalable React Native apps, it's important to consider factors such as code organization, modularity, and separation of concerns.
Follow best practices like organizing your code into reusable components, separating UI components from business logic, and using proper folder structures.
Use scalable design patterns like the Flux architecture (with Redux) to manage state and facilitate future app growth.
Consider server-side solutions for heavy data processing or complex business logic to offload some computational load from the client.
These are just a few important packages and concepts to consider when building a scalable React Native app with Redux and a robust infrastructure. Always stay updated with the latest developments in the React Native ecosystem and choose packages that best fit the requirements of your specific project.
    ''',
    '''
    In order to achieve rapid execution, learning from failure & building scale and reliability with Go, you can follow these best practices:

Embrace Go's simplicity and efficiency: Go is designed to be a simple and efficient language, allowing you to write clean and concise code. Make use of Go's built-in concurrency features like goroutines and channels to execute tasks concurrently and improve performance.

Write testable code: Go has a strong focus on testability. Write unit tests for your code to ensure its correctness and maintainability. Use the built-in testing package in Go to create comprehensive test suites and run them regularly.

Handle errors gracefully: Go promotes the use of explicit error handling. Always check and handle errors returned from functions or methods to prevent unexpected failures. Implement appropriate error handling strategies, such as logging errors, returning meaningful error messages, or using error types for different error scenarios.

Implement logging and monitoring: Logging and monitoring are crucial for understanding the behavior of your Go applications. Use a logging library, such as logrus or zap, to log important events, errors, and debugging information. Integrate monitoring tools like Prometheus or Datadog to track performance metrics and gain insights into the health and availability of your application.

Leverage built-in concurrency and parallelism: Go provides powerful concurrency primitives like goroutines and channels, which allow you to efficiently handle concurrent tasks. Utilize goroutines to execute tasks concurrently and communicate between them using channels. Be mindful of synchronization and avoid race conditions by properly using mutexes or other synchronization primitives.

Design for scalability and reliability: When building scalable and reliable applications, consider using distributed systems patterns and techniques. Use message queues like RabbitMQ or Apache Kafka to decouple components and handle asynchronous processing. Implement circuit breakers, retries, and timeouts to handle failures gracefully and prevent cascading failures.

Monitor and optimize performance: Continuously monitor the performance of your Go applications and identify bottlenecks or areas for improvement. Use profiling tools like pprof to analyze CPU and memory usage, and optimize critical sections of your code for better performance. Consider techniques such as connection pooling, caching, or optimizing database queries to improve overall performance.

Learn from failures and iterate: Adopt a culture of learning from failures and continuously improving your codebase. Conduct post-mortem analyses when failures occur, identify root causes, and implement preventive measures to avoid similar issues in the future. Encourage code reviews, pair programming, and knowledge sharing to foster a learning environment within your team.

By following these practices, you can leverage the capabilities of Go to build scalable, reliable, and performant applications while maintaining a focus on rapid execution and learning from failures.
    '''
  ];

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Blog'),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Recursos y Consejos',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            const Text(
              'Sumérgete en nuestro blog, donde encontrarás artículos informativos y consejos prácticos sobre telecomunicaciones, conectividad, ciberseguridad, cloud computing y más. Obtén información valiosa para tomar decisiones informadas y optimizar tu infraestructura tecnológica.',
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 16),
            const Text(
              'Últimos artículos:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            ListView.builder(
              itemCount: titles.length,
              itemBuilder: (BuildContext context, int index) {
                return CupertinoButton(
                  child: Column(
                    children: [
                      Image.network('https://picsum.photos/400?random=$index'),
                      Text(titles[index]),
                      const Icon(CupertinoIcons.arrowshape_turn_up_left_circle),
                    ],
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (_) => OnDetail(
                          item: CatalogItem(
                            title: titles[index],
                            description: articles[index],
                            imageUrl: 'https://picsum.photos/400?random=$index',
                            brand: 'Autor: May Fuentes Fernando',
                            price: par
                                ? generarRatingAleatorio() * 8 + 0.49
                                : generarRatingAleatorio() * 800 + 0.99,
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
            ),

            // CupertinoButton(
            //   leading: Image.network('https://picsum.photos/400?random=420'),
            //   title:
            //       const Text('10 consejos para proteger tus datos en la nube'),
            //   trailing: const Icon(CupertinoIcons.security),
            //   onTap: () {
            //     Navigator.push(
            //       context,
            //       CupertinoPageRoute(
            //         builder: (_) => OnDetail(
            //           item: CatalogItem(
            //             title: 'Blog Post Title $index',
            //             description:
            //                 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sed enim eu ex elementum tempor quis vel turpis.',
            //             imageUrl: 'https://picsum.photos/400?random=$index',
            //           ),
            //         ),
            //       ),
            //     );
            //   },
            // ),
            // CupertinoButton(
            //   leading: Image.network('https://picsum.photos/400?random=420'),
            //   title:
            //       const Text('La importancia de la seguridad en las redes IoT'),
            //   trailing: const Icon(CupertinoIcons.network_check),
            //   onTap: () {
            //     Navigator.push(
            //       context,
            //       CupertinoPageRoute(
            //         builder: (_) => OnDetail(
            //           item: CatalogItem(
            //             title: 'Blog Post Title $index',
            //             description:
            //                 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sed enim eu ex elementum tempor quis vel turpis.',
            //             imageUrl: 'https://picsum.photos/400?random=$index',
            //           ),
            //         ),
            //       ),
            //     );
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}

class BlogSection extends StatelessWidget {
  const BlogSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Center(
          child: Text(
            'Our Blog',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 360,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.only(right: 20, left: 10),
                child: Container(
                  color: CupertinoColors.tertiaryLabel,
                  child: SizedBox(
                    width: 370,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10)),
                          child: Image.network(
                            'https://picsum.photos/500?random=$index',
                            height: 180,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 1),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                'Blog Post Title $index',
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text(
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sed enim eu ex elementum tempor quis vel turpis.',
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const SizedBox(width: 10),
                              CupertinoButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    CupertinoPageRoute(
                                      builder: (_) => OnDetail(
                                        item: CatalogItem(
                                          title: 'Blog Post Title $index',
                                          description:
                                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sed enim eu ex elementum tempor quis vel turpis.',
                                          imageUrl:
                                              'https://picsum.photos/400?random=$index',
                                          brand: 'Autor: Fernando May Fuentes',
                                          price: par
                                              ? generarRatingAleatorio() * 4 +
                                                  0.11
                                              : generarRatingAleatorio() * 40 +
                                                  0.19,
                                        ),
                                      ),
                                    ),
                                  );
                                },
                                child: const Text('Read more'),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        // const SizedBox(
        //   height: 18,
        // ),
        // CupertinoButton(
        //   onPressed: () {
        //     Navigator.push(
        //       context,
        //       CupertinoPageRoute(
        //         builder: (_) => BlogScreen(),
        //       ),
        //     );
        //   },
        //   child: const Padding(
        //     padding: EdgeInsets.all(8.0),
        //     child: Text("View more articles"),
        //   ),
        // ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}

class BlogSectionII extends StatelessWidget {
  final List<String> _blogItems = [
    "Pocket Pocket",
    "DSLTech Hialsp",
    "Pocket Protet",
    "Pocket Viecket",
    "Dals Schitel"
  ];

  final List<String> _blogDesc = [
    "Un dispositivo compacto y versátil que te permite llevar tus archivos y documentos importantes siempre contigo. Cuenta con capacidad de almacenamiento de alta velocidad y una interfaz fácil de usar.",
    "Experimenta la máxima calidad de sonido con los auriculares DSLTech Hialsp. Estos auriculares inalámbricos ofrecen un sonido nítido y potente, además de ser cómodos de usar durante largos períodos de tiempo.",
    "Protege tus dispositivos electrónicos con el estuche Pocket Protet. Fabricado con materiales duraderos y resistentes al agua, este estuche te brinda la tranquilidad de que tus dispositivos estarán seguros en todo momento.",
    "Convierte tu smartphone en un dispositivo de realidad virtual con el Pocket Viecket. Este visor de realidad virtual te sumergirá en experiencias virtuales increíbles, permitiéndote explorar nuevos mundos desde la comodidad de tu hogar.",
    "El Dals Schitel es un dispositivo inteligente que te ayudará a controlar y gestionar tus dispositivos domésticos de forma eficiente. Conecta y controla tus electrodomésticos desde cualquier lugar a través de una aplicación fácil de usar.",
    "Siempre es bueno usar una lavadora en su lugar?",
    "Si, es completamente normal, el desfase colectivo funciona al sincronizar, doble SSS4"
  ];

  final List<String> _blogIm = [
    "assets/images/pocktpocket.png",
    "assets/images/dsldechialsp.png",
    "assets/images/pockeprotet.png",
    "assets/images/poccketviecket.png",
    "assets/images/dalsschitel.png",
  ];

  BlogSectionII({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 16),
        // const Text(
        //   "Blog",
        //   style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        // ),
        const SizedBox(height: 16),
        SizedBox(
          height: 360,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: _blogItems.length,
            itemBuilder: (BuildContext context, int index) {
              return CupertinoButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (_) => OnDetail(
                        item: CatalogItem(
                            title: _blogItems[index],
                            description: _blogDesc[index],
                            imageUrl: _blogIm[index],
                            brand: '',
                            price: par
                                ? generarRatingAleatorio() * 6 + 0.39
                                : generarRatingAleatorio() * 60 + 0.39),
                      ),
                    ),
                  );
                },
                child: Container(
                  width: 290,
                  margin: const EdgeInsets.symmetric(horizontal: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 170,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(_blogIm[index]),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10)),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        _blogItems[index],
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        _blogDesc[index],
                        style: const TextStyle(
                            fontSize: 14, color: CupertinoColors.systemGrey),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class StatsSection extends StatelessWidget {
  final List<String> _statsItems = [
    "Total Users: 1000",
    "Monthly Revenue: \$10,000",
    "Average Rating: 4.5",
    "Total Downloads: 50,000",
    "Active Users: 500"
  ];

  StatsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // const Text(
        //   "Stats",
        //   style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        // ),
        const SizedBox(height: 16),
        SizedBox(
          height: 100,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: _statsItems.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                width: 200,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      CupertinoIcons.star,
                      size: 42 * (index + 1) / 5,
                      color: Constants.sandColor,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      _statsItems[index],
                      style: const TextStyle(fontSize: 16),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class ProductosScreen extends StatelessWidget {
  const ProductosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Productos'),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Herramientas y Equipos de Última Generación',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            const Text(
              'Descubre una amplia gama de productos y equipos de telecomunicaciones y tecnología de alta calidad. Encuentra desde routers y switches de alto rendimiento hasta soluciones de ciberseguridad y dispositivos IoT, todo respaldado por las mejores marcas del mercado.',
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 16),
            const Text(
              'Nuestras categorías de productos incluyen:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            CupertinoButton(
              child: const Row(
                children: [
                  Icon(CupertinoIcons.rectangle_arrow_up_right_arrow_down_left),
                  Text('Routers'),
                ],
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (_) => OnDetail(
                      item: CatalogItem(
                          title: 'Routers',
                          description: '_catalogDescription[index]',
                          imageUrl: CupertinoIcons.rocket.toString(),
                          brand: 'tp-link',
                          price: par
                              ? generarRatingAleatorio() * 7 + 0.15
                              : generarRatingAleatorio() * 31 + 0.15),
                    ),
                  ),
                );
              },
            ),
            CupertinoButton(
              child: const Row(children: [
                Icon(CupertinoIcons.switch_camera),
                Text('Switches'),
              ]),
              onPressed: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (_) => OnDetail(
                      item: CatalogItem(
                          title: 'Switches',
                          description: '_catalogDescription[index]',
                          imageUrl: CupertinoIcons.switch_camera.toString(),
                          brand: 'huawei',
                          price: par
                              ? generarRatingAleatorio() * 16 + 0.15
                              : generarRatingAleatorio() * 50 + 0.15),
                    ),
                  ),
                );
              },
            ),
            CupertinoButton(
              child: const Row(children: [
                Icon(CupertinoIcons.rhombus),
                Text('POS'),
              ]),
              onPressed: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (_) => OnDetail(
                      item: CatalogItem(
                          title: 'POS',
                          description: 'Puntos de Venta [index]',
                          imageUrl: CupertinoIcons.rhombus.toString(),
                          brand: 'dsl',
                          price: par
                              ? generarRatingAleatorio() * 2.8 + 0.54
                              : generarRatingAleatorio() * 49 + 0.15),
                    ),
                  ),
                );
              },
            ),
            CupertinoButton(
              child: const Row(children: [
                Icon(CupertinoIcons.rectangle_stack_fill_badge_person_crop),
                Text('Ciberseguridad'),
              ]),
              onPressed: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (_) => OnDetail(
                      item: CatalogItem(
                          title: 'Ciberseguridad',
                          description:
                              'Cursos, Consultorías, Auditorías [index]',
                          imageUrl: CupertinoIcons
                              .rectangle_arrow_up_right_arrow_down_left
                              .toString(),
                          brand: 'tp-link',
                          price: par
                              ? generarRatingAleatorio() * 9 + 0.15
                              : generarRatingAleatorio() * 69 + 0.15),
                    ),
                  ),
                );
              },
            ),
            CupertinoButton(
              child: const Row(children: [
                Icon(CupertinoIcons.device_phone_landscape),
                Text('Dispositivos IoT'),
              ]),
              onPressed: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (_) => OnDetail(
                      item: CatalogItem(
                          title: 'Dispositivos IoT',
                          description: '_catalogDescription[index]',
                          imageUrl: CupertinoIcons
                              .rectangle_arrow_up_right_arrow_down_left_slash
                              .toString(),
                          brand: 'cerlingwee',
                          price: par
                              ? generarRatingAleatorio() * 36 + 0.10
                              : generarRatingAleatorio() * 189 + 0.61),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class CatalogSection extends StatelessWidget {
  final List<String> _catalogItems = [
    "D-Lite Sapphire Reloj",
    "Pocket Checkpacke",
    "Pocket Protector",
    "DPS Plush",
    "Distleptch"
  ];
  final List<String> _catalogDesc = [
    "Un elegante reloj de diseño moderno con correa de acero inoxidable y esfera sutilmente decorada. Perfecto para añadir un toque de sofisticación a cualquier atuendo.",
    "Descripción: Una práctica mochila de tamaño compacto ideal para llevar tus pertenencias esenciales a todas partes. Cuenta con varios compartimentos y un diseño resistente al agua.",
    "Un protector de pantalla transparente y duradero para tu smartphone. Proporciona una excelente protección contra arañazos y manchas, manteniendo la pantalla impecable.",
    "Un adorable peluche de alta calidad con una textura suave y esponjosa. Ideal para regalar a tus seres queridos o como compañero de aventuras.",
    "Un dispositivo inteligente de última generación que te permite controlar de forma remota tus electrodomésticos y luces en casa. Conectividad sin complicaciones y una interfaz fácil de usar."
  ];

  final List<String> _catalogImgs = [
    "assets/images/dlidlsphirel.png",
    "assets/images/DsitLeptch.png",
    "assets/images/pootkeckpacke.png",
    "assets/images/dpsplulh.png",
    "assets/images/pockeprotet.png",
  ];

  final List<String> _catalogPrices = [
    "499.99",
    "299.99",
    "99.99",
    "149.99",
    "799.99"
  ];

  CatalogSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 14),
        // const Text(
        //   "Catalog",
        //   style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        // ),
        const SizedBox(height: 16),
        SizedBox(
          height: 300,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: _catalogItems.length,
            itemBuilder: (BuildContext context, int index) {
              return CupertinoButton(
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   CupertinoPageRoute(
                  //     builder: (_) => OnDetail(
                  //       item: CatalogItem(
                  //         title: _catalogItems[index],
                  //         description: _catalogDesc[index],
                  //         imageUrl: _catalogImgs[index],
                  //         brand: _catalogItems[index],
                  //         price: double.parse(_catalogPrices[index]),
                  //         // par
                  //         //     ? generarRatingAleatorio() * 0.9 + 0.15
                  //         //     : generarRatingAleatorio() * 10 + 0.15
                  //       ),
                  //     ),
                  //   ),
                  // );
                },
                child: Container(
                  width: 210,
                  margin: const EdgeInsets.symmetric(horizontal: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 150,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(_catalogImgs[index]),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10)),
                        ),
                      ),
                      // const SizedBox(height: 4),
                      Text(
                        "\$${_catalogPrices[index]}",
                        style: const TextStyle(
                            fontSize: 14, color: CupertinoColors.systemGrey),
                      ),
                      // const SizedBox(height: 8),
                      Text(
                        _catalogItems[index],
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class StatisticsSection extends StatelessWidget {
  const StatisticsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 40),
      color: Constants.whiteColor,
      child: Column(
        children: [
          const Text(
            'Our Statistics',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          screenWidth > 710
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _buildStatisticCard('Completed Projects', '200+',
                        CupertinoIcons.chevron_right_square),
                    _buildStatisticCard('Awards Won', '15+',
                        CupertinoIcons.exclamationmark_octagon),
                    _buildStatisticCard(
                        'Satisfied Clients', '100+', CupertinoIcons.star),
                  ],
                )
              : Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: _buildStatisticCard('Completed Projects', '200+',
                          CupertinoIcons.chevron_left_square),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: _buildStatisticCard('Awards Won', '15+',
                          CupertinoIcons.exclamationmark_octagon_fill),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: _buildStatisticCard(
                          'Satisfied Clients', '100+', CupertinoIcons.star),
                    ),
                  ],
                ),
        ],
      ),
    );
  }

  Widget _buildStatisticCard(String title, String value, IconData icon) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: CupertinoColors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(icon, size: 40, color: CupertinoColors.activeOrange),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                value,
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class SuccessCasesSection extends StatelessWidget {
  SuccessCasesSection({Key? key}) : super(key: key);

  final List<CatalogItem> _successCases = [
    CatalogItem(
      title: 'Fitness App',
      description: 'Increased user engagement by 60%',
      imageUrl: 'https://picsum.photos/500?random=1',
      brand: 'Chevrolet',
      price: 4899.85,
    ),
    CatalogItem(
      title: 'E-commerce Website',
      description: 'Increased sales by 75%',
      imageUrl: 'https://picsum.photos/500?random=2',
      brand: 'Toyota',
      price: 7197.81,
    ),
    CatalogItem(
      title: 'Delivery App',
      description: 'Reduced delivery times by 50%',
      imageUrl: 'https://picsum.photos/500?random=3',
      brand: 'Mitsubishi',
      price: 5858.27,
    ),
    CatalogItem(
      title: 'Social Network',
      description: 'Gained 1 million users in 6 months',
      imageUrl: 'https://picsum.photos/500?random=4',
      brand: 'Ford Honda',
      price: 6721.97,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 40),
      child: Column(
        children: [
          const Text(
            'Success Cases',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: 300,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _successCases.length,
              itemBuilder: (BuildContext context, int index) {
                return CupertinoButton(
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   CupertinoPageRoute(
                      //     builder: (_) => OnDetail(
                      //       item: _successCases[index],
                      //     ),
                      //   ),
                      // );
                    },
                    child: _buildSuccessCaseCard(_successCases[index]));
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSuccessCaseCard(CatalogItem successCase) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            child: Image.network(
              successCase.imageUrl,
              height: 200,
              width: 300,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            successCase.title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            successCase.description,
            style: const TextStyle(
              fontSize: 16,
              color: CupertinoColors.systemGrey6,
            ),
          ),
        ],
      ),
    );
  }
}

class CatalogueSection extends StatelessWidget {
  CatalogueSection({Key? key}) : super(key: key);

  final List<CatalogItem> _catalogItems = [
    CatalogItem(
      title: 'Mobile App Development',
      description:
          'We develop mobile apps for iOS and Android platforms\nServida de lujo con doble picante y extra queso, be delighful of su sabor',
      imageUrl: 'https://picsum.photos/345?random=1',
      brand: 'California IT Sltns.',
      price: par
          ? generarRatingAleatorio() * 500.117
          : generarRatingAleatorio() * 599.710,
    ),
    CatalogItem(
      title: 'Web App Development',
      description: 'We develop web apps using modern web technologies',
      imageUrl: 'https://picsum.photos/345?random=2',
      brand: 'Gulf Airlines Paradise',
      price: par
          ? generarRatingAleatorio() * 490.427
          : generarRatingAleatorio() * 497.710,
    ),
    CatalogItem(
      title: 'Software Development',
      description:
          'We develop custom software solutions for your business needs',
      imageUrl: 'https://picsum.photos/345?random=3',
      brand: 'Martini Core Engine',
      price: par
          ? generarRatingAleatorio() * 825.517
          : generarRatingAleatorio() * 825.710,
    ),
    CatalogItem(
      title: 'Data Analytics',
      description:
          'We explore and reveal benefits of machine learning and data analysis',
      imageUrl: 'https://picsum.photos/345?random=4',
      brand: 'Palmolive Analysis Dept',
      price: par
          ? generarRatingAleatorio() * 684.417
          : generarRatingAleatorio() * 684.710,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Column(
        children: [
          const Text(
            'Our Catalog',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: 310,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _catalogItems.length,
              itemBuilder: (BuildContext context, int index) {
                return CupertinoButton(
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   CupertinoPageRoute(
                      //     builder: (_) =>
                      //     // OnDetail(
                      //     //   item: _catalogItems[index],
                      //     // ),
                      //   ),
                      // );
                    },
                    child: _buildCatalogItemCard(_catalogItems[index]));
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCatalogItemCard(CatalogItem catalogItem) {
    return Container(
      width: 310,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            child: Image.network(
              catalogItem.imageUrl,
              height: 200,
              width: 310,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            catalogItem.title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            catalogItem.description,
            style: const TextStyle(
              fontSize: 16,
              color: CupertinoColors.systemGrey6,
            ),
          ),
        ],
      ),
    );
  }
}

class OnDetail extends StatelessWidget {
  final CatalogItem item;

  const OnDetail({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int quantity = 1;
    final rating = generarRatingAleatorio();
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(item.title),
      ),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Flexible(
              child: item.imageUrl.substring(0, 4) == 'http'
                  ? Image.network(
                      item.imageUrl,
                      fit: BoxFit.cover,
                    )
                  : Image.asset(item.imageUrl),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item.title,
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        item.brand,
                        style: const TextStyle(
                          fontSize: 16,
                          color: CupertinoColors.placeholderText,
                        ),
                      ),
                      const SizedBox(height: 16),
                      Text(
                        item.description,
                        style: const TextStyle(fontSize: 16),
                      ),
                      const SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '\$${(item.price * 1.17).toStringAsFixed(2)}',
                            style: const TextStyle(
                              fontSize: 17,
                              color: CupertinoColors.systemGrey,
                              decoration: TextDecoration.lineThrough,
                              decorationColor: CupertinoColors.systemGrey,
                            ),
                          ),
                          Text(
                            '\$${item.price.toStringAsFixed(2)}',
                            style: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      CupertinoSegmentedControl<int>(
                        children: const {
                          1: Text('1'),
                          2: Text('2'),
                          3: Text('3'),
                          4: Text('4'),
                          // Add more quantities if needed
                        },
                        onValueChanged: (value) {
                          quantity = value!;
                        },
                        groupValue: quantity,
                      ),
                      const SizedBox(height: 16),
                      CupertinoButton(
                        onPressed: () {
                          // Navigator.push(
                          //   context,
                          //   CupertinoPageRoute(
                          //     builder: (_) => PaymentScreen(
                          //       item: item,
                          //       quantity: quantity,
                          //     ),
                          //   ),
                          // );
                        },
                        color: CupertinoColors.activeBlue,
                        child: const Text(
                          'Comprar',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: CupertinoColors.white,
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      // Additional sections as needed
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// class OnDetail extends StatelessWidget {
//   final CatalogItem item;

//   const OnDetail({super.key, required this.item});

//   @override
//   Widget build(BuildContext context) {
//     int quantity = 1;
//     final rating = generarRatingAleatorio();
//     return CupertinoPageScaffold(
//       child: CustomScrollView(
//         slivers: [
//           SliverCupertinoNavigationBar(
//             expandedHeight: 200,
//             flexibleSpace: FlexibleSpaceBar(
//               background: item.imageUrl.substring(0, 4) == 'http'
//                   ? Image.network(
//                       item.imageUrl,
//                       fit: BoxFit.cover,
//                     )
//                   : Image.asset(item.imageUrl),
//             ),
//           ),
//           SliverList(
//             delegate: SliverChildListDelegate(
//               [
//                 Padding(
//                   padding: const EdgeInsets.all(50),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       // Text(
//                       //   item.title,
//                       //   style: const TextStyle(
//                       //     fontSize: 24,
//                       //     fontWeight: FontWeight.bold,
//                       //   ),
//                       // ),
//                       // const SizedBox(height: 16),
//                       // Text(
//                       //   item.description,
//                       //   style: const TextStyle(fontSize: 16),
//                       // ),
//                       const SizedBox(height: 16),
//                       Padding(
//                         padding: const EdgeInsets.all(16.0),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               item.title,
//                               style: const TextStyle(
//                                   fontSize: 24.0, fontWeight: FontWeight.bold),
//                             ),
//                             const SizedBox(height: 8.0),
//                             Text(
//                               item.brand,
//                               style: const TextStyle(
//                                   fontSize: 16.0,
//                                   color: Constants.primaryColor),
//                             ),
//                           ],
//                         ),
//                       ),

//                       // Detalle del producto
//                       Padding(
//                         padding: const EdgeInsets.symmetric(horizontal: 16.0),
//                         child: Text(
//                           item.description,
//                           style: const TextStyle(fontSize: 16.0),
//                         ),
//                       ),

//                       // Estrellas y reseñas
//                       Container(
//                         width: 80,
//                         padding: const EdgeInsets.all(10.0),
//                         decoration: BoxDecoration(
//                             color: CupertinoColors.grey.shade200,
//                             borderRadius: BorderRadius.circular(30)),
//                         child: Row(
//                           crossAxisAlignment: CrossAxisAlignment.stretch,
//                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                           children: [
//                             Text(
//                               rating.toStringAsFixed(2),
//                               style: const TextStyle(fontSize: 16.0),
//                             ),
//                             const SizedBox(width: 8.0),
//                             const Padding(
//                               padding: EdgeInsets.zero,
//                               child: Icon(CupertinoIcons.star,
//                                   color: CupertinoColors.yellow),
//                             ),

//                             const SizedBox(width: 8.0),
//                             // const Text(
//                             //   'Reseñas',
//                             //   style: TextStyle(fontSize: 16.0),
//                             // ),
//                           ],
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: RatingWidget(rating: rating),
//                       ),

//                       // Precio y precio rebaja
//                       Container(
//                         width: 400,
//                         padding: const EdgeInsets.all(16.0),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                           crossAxisAlignment: CrossAxisAlignment.stretch,
//                           children: [
//                             // if (item.price % 2 == 0)
//                             Text(
//                               '\$${(item.price * 1.17).toStringAsFixed(2)}',
//                               style: TextStyle(
//                                   fontSize: 17.0,
//                                   color: CupertinoColors.grey.shade500,
//                                   decoration: TextDecoration.lineThrough,
//                                   decorationColor:
//                                       CupertinoColors.grey.shade400),
//                             ),
//                             Text(
//                               '\$${item.price.toStringAsFixed(2)}',
//                               style: const TextStyle(
//                                   fontSize: 24.0, fontWeight: FontWeight.bold),
//                             ),
//                           ],
//                         ),
//                       ),

//                       // Widget de cantidad
//                       Padding(
//                         padding: const EdgeInsets.all(26.0),
//                         child: Row(
//                           children: [
//                             const Text(
//                               'Cantidad:',
//                               style: TextStyle(fontSize: 16.0),
//                             ),
//                             const SizedBox(width: 8.0),
//                             // Text(
//                             //   '1',
//                             //   style: TextStyle(fontSize: 16.0),
//                             // ),
//                             // Aquí puedes implementar tu propio widget de cantidad según tus necesidades
//                             // Por ejemplo, puedes utilizar un TextField o un DropdownButton
//                             DropdownButton<int>(
//                               value: quantity,
//                               onChanged: (value) {
//                                 // setState(() {
//                                 quantity = value!;
//                                 // });
//                               },
//                               items: [
//                                 1,
//                                 2,
//                                 3,
//                                 4,
//                                 5,
//                                 6,
//                                 7,
//                                 8,
//                                 9,
//                                 10,
//                                 15,
//                                 20,
//                                 25,
//                                 30,
//                                 40,
//                                 50,
//                                 70,
//                                 100,
//                                 200,
//                                 500
//                               ].map((q) {
//                                 return DropdownMenuItem<int>(
//                                   value: q,
//                                   child: Text(q.toString()),
//                                 );
//                               }).toList(),
//                             ),
//                           ],
//                         ),
//                       ),

//                       // Selección de colores o sabores
//                       // if (item.flavors!.isNotEmpty)
//                       //   const Padding(
//                       //     padding: EdgeInsets.all(16.0),
//                       //     child: Column(
//                       //       crossAxisAlignment: CrossAxisAlignment.start,
//                       //       children: [
//                       //         Text(
//                       //           'Seleccione un sabor:',
//                       //           style: TextStyle(fontSize: 16.0),
//                       //         ),
//                       //         SizedBox(height: 8.0),
//                       //         // Aquí puedes implementar tu propio widget de selección de colores o sabores
//                       //         // Por ejemplo, puedes utilizar un ListView o un GridView
//                       //       ],
//                       //     ),
//                       //   ),

//                       // Sección de domicilio

//                       // Sección de compra y pago
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceAround,
//                         children: [
//                           const SizedBox(width: 10),
//                           CupertinoButton(
//                             onPressed: () {
//                               Navigator.push(
//                                 context,
//                                 CupertinoPageRoute(
//                                     builder: (_) => PaymentScreen(
//                                           item: item,
//                                           quantity: quantity,
//                                         )),
//                               );
//                             },
//                             child: const Text(
//                               "Comprar",
//                               style: TextStyle(
//                                 fontSize: 16,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                       // Más elementos según tus necesidades
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

class RatingWidget extends StatelessWidget {
  final double rating;

  const RatingWidget({super.key, required this.rating});

  @override
  Widget build(BuildContext context) {
    const starColor = CupertinoColors.systemYellow;

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(5, (index) {
        if (index < rating.floor()) {
          // Estrella completa
          return const Icon(CupertinoIcons.star, color: starColor);
        } else if (index == rating.floor() && rating % 1 != 0) {
          // Estrella media
          return const Icon(CupertinoIcons.star_lefthalf_fill,
              color: starColor);
        } else {
          // Estrella vacía
          return const Icon(CupertinoIcons.star_fill, color: starColor);
        }
      }),
    );
  }
}

class TestimonialsSection extends StatefulWidget {
  const TestimonialsSection({super.key});

  @override
  _TestimonialsSectionState createState() => _TestimonialsSectionState();
}

class _TestimonialsSectionState extends State<TestimonialsSection> {
  List<String> testimonials = [
    '“DSLTech nos brindó un servicio excelente, entendieron perfectamente nuestras necesidades y desarrollaron una aplicación móvil que superó nuestras expectativas.”',
    '"Excelente servicio. ¡Muy recomendado!"',
    '"Los productos son de alta calidad. ¡Volveré a comprar!"',
    '"El equipo de soporte siempre está dispuesto a ayudar. ¡Gracias!"',
    '"DSLTech fue clave para el éxito de nuestro proyecto. Su experiencia y dedicación nos ayudaron a alcanzar nuestros objetivos de manera eficiente."',
    '"Trabajar con DSLTech ha sido una experiencia maravillosa. Su enfoque creativo y profesionalismo me han ayudado a elevar la calidad de mis proyectos."',
    '"Recomiendo ampliamente los servicios de DSLTech. Su equipo altamente capacitado y comprometido se aseguró de que obtuviera los resultados deseados en tiempo récord."',
    '"Estoy muy agradecida con DSLTech por convertir mi idea en una realidad. Su atención personalizada y soluciones innovadoras hicieron que mi negocio despegara."',
  ];
  List<String> people = [
    '- María García, CEO de DPS Plush S.A.',
    '- Carlos Fernández, Director de Marketing en XY Company',
    '- Laura Martínez, Cliente satisfecha',
    '- Ana Rodríguez, Entrepeneur',
    '- Juan Pérez, Fundador de ABC Startup',
    '- Andrea López, Diseñadora Gráfica Freelance',
    '- Ricardo Sánchez, Cliente satisfecho',
    '- Sofía Mendoza, Digital Entrepeneur',
  ];
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    Future.delayed(
        const Duration(
          seconds: 17,
          milliseconds: 111,
        ), () {
      setState(() {
        currentIndex = (currentIndex + 1) % testimonials.length;
      });
      startTimer();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Text(
            testimonials[currentIndex],
            style: const TextStyle(
              fontSize: 16,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            people[currentIndex],
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class Footer extends StatelessWidget {
  const Footer({super.key});

  void launchFacebookPage() async {
    final facebookUrl = Uri.https('facebook.com', '/dsltechservices');
    if (await canLaunchUrl(facebookUrl)) {
      await launchUrl(facebookUrl);
    } else {
      throw Exception('No se puede abrir la página de Facebook');
    }
  }

  void launchTwitterPage() async {
    final twitterUrl = Uri.https('twitter.com', '/DSLTechServices');
    if (await canLaunchUrl(twitterUrl)) {
      await launchUrl(twitterUrl);
    } else {
      throw Exception('No se puede abrir la página de Twitter');
    }
  }

  void launchWhatsApp(String phoneNumber, String message) async {
    final url = Uri.https("api.whatsapp.com",
        "/send?phone=%2B525561074722&data=$phoneNumber+' '+$message&entry_point=page_cta");

    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw Exception('No se pudo abrir WhatsApp');
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: screenWidth > 710 ? 60 : 270,
      width: double.infinity,
      color: CupertinoColors.systemGrey2,
      child: screenWidth > 710
          ? Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 20,
                ),
                CupertinoButton.filled(
                  onPressed: () {
                    launchFacebookPage();
                  },
                  child: const Row(
                    children: [
                      Icon(
                        CupertinoIcons.flag_circle,
                        color: Constants.primaryColor,
                        size: 30,
                      ),
                      Text('Facebook'),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                CupertinoButton.filled(
                  onPressed: () {
                    launchTwitterPage();
                  },
                  child: const Row(children: [
                    Icon(
                      CupertinoIcons.memories,
                      color: Constants.primaryColor,
                      size: 30,
                    ),
                    Text('Twitter'),
                  ]),
                ),
                const SizedBox(
                  width: 20,
                ),
                CupertinoButton.filled(
                  onPressed: () {
                    launchWhatsApp(
                        "+525561074722", DateTime.timestamp().toString());
                  },
                  child: const Row(children: [
                    Icon(
                      CupertinoIcons.phone,
                      color: Constants.primaryColor,
                      size: 30,
                    ),
                    Text('Whatsapp'),
                  ]),
                ),
                const SizedBox(
                  width: 20,
                ),
                CupertinoButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (_) => const TermsScreen()));
                  },
                  child: const Text(
                    'Términos y Condiciones',
                    style: TextStyle(
                      color: Constants.primaryColor,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                CupertinoButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (_) => const PrivacyScreen()));
                  },
                  child: const Text(
                    'Aviso de Privacidad',
                    style: TextStyle(
                      color: Constants.primaryColor,
                    ),
                  ),
                ),
              ],
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 20,
                ),
                CupertinoButton.filled(
                  onPressed: () {
                    launchFacebookPage();
                  },
                  child: const Row(children: [
                    Icon(
                      CupertinoIcons.flag_circle,
                      color: Constants.primaryColor,
                      size: 30,
                    ),
                    Text('Facebook'),
                  ]),
                ),
                const SizedBox(
                  width: 20,
                ),
                CupertinoButton.filled(
                  onPressed: () {
                    launchTwitterPage();
                  },
                  child: const Row(children: [
                    Icon(
                      CupertinoIcons.memories,
                      color: Constants.primaryColor,
                      size: 30,
                    ),
                    Text('X'),
                  ]),
                ),
                const SizedBox(
                  width: 20,
                ),
                CupertinoButton.filled(
                  onPressed: () {
                    launchWhatsApp(
                        "+525561074722", DateTime.timestamp().toString());
                  },
                  child: const Row(children: [
                    Icon(
                      CupertinoIcons.phone,
                      color: Constants.primaryColor,
                      size: 30,
                    ),
                    Text('Whatsapp'),
                  ]),
                ),
                const SizedBox(
                  width: 20,
                ),
                CupertinoButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (_) => const TermsScreen()));
                  },
                  child: const Text(
                    'Términos y Condiciones',
                    style: TextStyle(
                      color: Constants.primaryColor,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                CupertinoButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (_) => const PrivacyScreen()));
                  },
                  child: const Text(
                    'Aviso de Privacidad',
                    style: TextStyle(
                      color: Constants.primaryColor,
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}

class UFooter extends StatelessWidget {
  const UFooter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      color: Constants.baseColor,
      child: const Padding(
        padding: EdgeInsets.all(10.0),
        child: Text(
          '© DSLTech Private Services 2023. Todos los derechos reservados.',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 16,
            color: Constants.whiteColor,
          ),
        ),
      ),
    );
  }
}

class TermsScreen extends StatelessWidget {
  const TermsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Términos y Condiciones'),
      ),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Consulta nuestros Términos y Condiciones.',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              CupertinoButton(
                onPressed: () {},
                child: const Row(children: [
                  Icon(CupertinoIcons.check_mark),
                  Text('Aceptación de los Términos'),
                ]),
              ),
              const Text(
                'Al acceder y utilizar nuestro sitio web y servicios, aceptas cumplir y estar sujeto a estos Términos. Si no estás de acuerdo con alguno de estos términos, te recomendamos que no utilices nuestros servicios.',
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 16),
              CupertinoButton(
                onPressed: () {},
                child: const Row(children: [
                  Icon(CupertinoIcons.checkmark_seal_fill),
                  Text('Uso del Sitio Web'),
                ]),
              ),
              const Text(
                'Nuestro sitio web es propiedad y está operado por Dominic Sltns. Tienes permitido utilizar el contenido y los servicios proporcionados en este sitio para tu uso personal y no comercial. No se permite la reproducción, distribución, modificación o uso no autorizado de cualquier parte de este sitio sin el consentimiento previo por escrito de DSL.',
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 16),
              CupertinoButton(
                onPressed: () {},
                child: const Row(children: [
                  Icon(CupertinoIcons.checkmark_shield),
                  Text('Privacidad'),
                ]),
              ),
              const Text(
                'El uso de nuestros servicios está sujeto a nuestra Política de Privacidad, que establece cómo recopilamos, utilizamos y protegemos tu información personal. Al utilizar nuestros servicios, aceptas nuestra Política de Privacidad.',
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 16),
              CupertinoButton(
                onPressed: () {},
                child: const Row(children: [
                  Icon(CupertinoIcons.check_mark_circled),
                  Text('Responsabilidad del Usuario'),
                ]),
              ),
              const Text(
                'Eres responsable de mantener la confidencialidad de tu información de cuenta y de cualquier actividad que ocurra bajo tu cuenta. Aceptas notificar de inmediato a DSL sobre cualquier uso no autorizado de tu cuenta o cualquier otra violación de seguridad.',
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 16),
              CupertinoButton(
                onPressed: () {},
                child: const Row(children: [
                  Icon(CupertinoIcons.person_crop_circle_fill_badge_checkmark),
                  Text('Propiedad Intelectual'),
                ]),
              ),
              const Text(
                'DSL es propietario de todos los derechos de propiedad intelectual relacionados con su sitio web, servicios y contenido. No se te otorga ningún derecho o licencia para utilizar nuestras marcas comerciales, logotipos u otros materiales protegidos por derechos de autor sin nuestro permiso expreso por escrito.',
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 16),
              CupertinoButton(
                onPressed: () {},
                child: const Row(children: [
                  Icon(CupertinoIcons.rectangle_fill_badge_checkmark),
                  Text('Modificaciones de los Términos'),
                ]),
              ),
              const Text(
                'Nos reservamos el derecho de modificar o actualizar estos Términos en cualquier momento sin previo aviso. Te recomendamos revisar regularmente estos Términos para estar al tanto de cualquier cambio. El uso continuado de nuestros servicios después de la publicación de los cambios constituye tu aceptación de los Términos modificados.',
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 16),
              CupertinoButton(
                onPressed: () {},
                child: const Row(children: [
                  Icon(CupertinoIcons.person_crop_circle_badge_checkmark),
                  Text('Limitación de Responsabilidad'),
                ]),
              ),
              const Text(
                'En la medida permitida por la ley, DSL no será responsable por ningún daño directo, indirecto, incidental, especial o consecuente, incluyendo, entre otros, pérdida de beneficios, ingresos, datos o uso, derivados de o relacionados con el uso de nuestros servicios.',
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 16),
              const UFooter(),
            ],
          ),
        ),
      ),
    );
  }
}

class PrivacyScreen extends StatelessWidget {
  const PrivacyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Aviso de Privacidad'),
      ),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Consulta nuestro Aviso de Privacidad.',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              const Text(
                'At Dominic sltns, We value and respect all of your privacy. Este aviso de privacidad explica cómo recopilamos, utilizamos y protegemos la información personal que obtenemos a través de nuestros servicios y productos. Te recomendamos leer detenidamente esta política para comprender nuestras prácticas y cómo afectan tus datos personales.',
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 16),
              CupertinoButton(
                onPressed: () {},
                child: const Row(children: [
                  Icon(CupertinoIcons.checkmark_circle),
                  Text('Información recopilada:'),
                ]),
              ),
              const Text(
                'Información de contacto, como nombre, dirección de correo electrónico y número de teléfono.',
                textAlign: TextAlign.justify,
              ),
              const Text(
                'Información de identificación personal, como fecha de nacimiento, género y nacionalidad.',
                textAlign: TextAlign.justify,
              ),
              const Text(
                'Información de facturación y pago, como datos de tarjeta de crédito o cuenta bancaria.',
                textAlign: TextAlign.justify,
              ),
              const Text(
                'Información de uso del sitio web y servicios, como registros de actividad, cookies y direcciones IP.',
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 16),
              CupertinoButton(
                onPressed: () {},
                child: const Row(children: [
                  Icon(CupertinoIcons.checkmark_alt_circle),
                  Text('Uso de la información:'),
                ]),
              ),
              const Text(
                'Utilizamos la información recopilada para proporcionar y mejorar nuestros servicios y productos.',
                textAlign: TextAlign.justify,
              ),
              const Text(
                'Utilizamos la información de contacto para enviar comunicaciones relacionadas con nuestros servicios y responder a tus consultas.',
                textAlign: TextAlign.justify,
              ),
              const Text(
                'Utilizamos la información de facturación y pago para procesar transacciones y garantizar la correcta facturación de nuestros servicios.',
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 16),
              CupertinoButton(
                onPressed: () {},
                child: const Row(children: [
                  Icon(CupertinoIcons.text_badge_checkmark),
                  Text('Divulgación de información:'),
                ]),
              ),
              const Text(
                'Podemos compartir tu información personal con proveedores de servicios confiables que nos asisten en la prestación de nuestros servicios.',
                textAlign: TextAlign.justify,
              ),
              const Text(
                'Podemos compartir tu información personal con proveedores de servicios confiables que nos asisten en la prestación de nuestros servicios.',
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 16),
              CupertinoButton(
                onPressed: () {},
                child: const Row(children: [
                  Icon(CupertinoIcons.checkmark_shield),
                  Text('Seguridad de la información:'),
                ]),
              ),
              const Text(
                'Tomamos medidas razonables para proteger tu información personal contra pérdida, robo y acceso no autorizado.',
                textAlign: TextAlign.justify,
              ),
              const Text(
                'Tomamos medidas razonables para proteger tu información personal contra pérdida, robo y acceso no autorizado.',
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 16),
              CupertinoButton(
                onPressed: () {},
                child: const Row(children: [
                  Icon(CupertinoIcons.doc_checkmark),
                  Text('Tus derechos:'),
                ]),
              ),
              const Text(
                'Tienes derecho a acceder, corregir, eliminar y actualizar tu información personal.',
                textAlign: TextAlign.justify,
              ),
              const Text(
                'Puedes optar por no recibir comunicaciones promocionales o cambiar tus preferencias de marketing en cualquier momento.',
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 16),
              CupertinoButton(
                onPressed: () {},
                child: const Row(children: [
                  Icon(CupertinoIcons.checkmark_alt),
                  Text('Cambios en la política:'),
                ]),
              ),
              const Text(
                'Nos reservamos el derecho de modificar o actualizar este aviso de privacidad en cualquier momento. Te recomendamos revisar esta política periódicamente para estar informado sobre los cambios.',
                textAlign: TextAlign.justify,
              ),
              const Text(
                'Si tienes alguna pregunta o inquietud sobre nuestra política de privacidad, no dudes en contactarnos a través de los canales proporcionados en nuestro sitio web.',
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 16),
              const UFooter(),
            ],
          ),
        ),
      ),
    );
  }
}

// class LanguageSelectorWidget extends StatefulWidget {
//   const LanguageSelectorWidget({super.key});

//   @override
//   _LanguageSelectorWidgetState createState() => _LanguageSelectorWidgetState();
// }

// class _LanguageSelectorWidgetState extends State<LanguageSelectorWidget> {
//   String _selectedLanguage = 'en';

//   @override
//   Widget build(BuildContext context) {
//     return DropdownButtonHideUnderline(
//       child: DropdownButton<String>(
//         value: _selectedLanguage,
//         onChanged: (newValue) {
//           setState(() async {
//             _selectedLanguage = newValue!;
//             await LanguageSelector.load(_selectedLanguage);
//           });
//         },
//         items: LanguageSelector.supportedLanguages
//             .map<DropdownMenuItem<String>>((String value) {
//           return DropdownMenuItem<String>(
//             value: value,
//             child: Row(
//               children: [
//                 _buildLanguageFlag(value),
//                 const SizedBox(width: 4),
//                 Text(value),
//               ],
//             ),
//           );
//         }).toList(),
//       ),
//     );
//   }

//   Widget _buildLanguageFlag(String language) {
//     String flagAsset;
//     switch (language) {
//       case 'Español':
//         flagAsset = 'assets/spanish_flag.png';
//         break;
//       case 'English':
//         flagAsset = 'assets/english_flag.png';
//         break;
//       case 'Français':
//         flagAsset = 'assets/french_flag.png';
//         break;
//       case 'Deutsch':
//         flagAsset = 'assets/german_flag.png';
//         break;
//       default:
//         flagAsset = 'assets/unknown_flag.png';
//     }
//     return Image.asset(
//       flagAsset,
//       width: 24,
//       height: 24,
//     );
//   }
// }

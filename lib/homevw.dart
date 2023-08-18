import 'package:dominicsltns/home.dart';
import 'package:dominicsltns/homev.dart';
import 'package:dominicsltns/homeview.dart';
import 'package:dominicsltns/scetions.dart';
import 'package:flutter/cupertino.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    bool showDrawer = false;
    const double widthThreshold = 710.0;

    if (screenWidth > widthThreshold) {
      showDrawer = true;
    } else {
      showDrawer = false;
    }

    var scaffoldKey;

    // This shows a CupertinoModalPopup which hosts a CupertinoActionSheet.
    void _showActionSheet(BuildContext context) {
      showCupertinoModalPopup<void>(
        context: context,
        builder: (BuildContext context) => CupertinoActionSheet(
          title: const Text('Beinvenido a Doominic Sltns'),
          message: const Text('Seleccione una opción del menú'),
          actions: <CupertinoActionSheetAction>[
            CupertinoActionSheetAction(
              isDefaultAction: true,
              onPressed: () {
                showDrawer = !showDrawer;
                Navigator.pop(context);
              },
              child: Padding(
                padding: EdgeInsets.zero.add(const EdgeInsets.symmetric(
                    horizontal: 10.0, vertical: 31.0)),
                child: Image.asset(
                  'assets/images/dsltechserv.png',
                  height: 64,
                ),
              ),
            ),
            CupertinoActionSheetAction(
              onPressed: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (context) => const ServicesScreen(),
                  ),
                );
              },
              child: const Text('Services'),
            ),
            CupertinoActionSheetAction(
              onPressed: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (context) => const AboutScreen(),
                  ),
                );
              },
              child: const Text('About'),
            ),
            CupertinoActionSheetAction(
              onPressed: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (context) => const ContactScreen(),
                  ),
                );
              },
              child: const Text('Contact Us'),
            ),
          ],
        ),
      );
    }

    return CupertinoPageScaffold(
      key: scaffoldKey,
      navigationBar: CupertinoNavigationBar(
        leading: Padding(
          padding: EdgeInsets.zero.add(
            const EdgeInsets.symmetric(horizontal: 10.0),
          ),
          child: Image.network(
            'https://picsum.com/photos/200',
            height: 40,
          ),
        ),
        middle: const Text('Dominic Solutions'),
        trailing: showDrawer
            ? Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CupertinoButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        CupertinoPageRoute(
                          builder: (context) => const ServicesScreen(),
                        ),
                      );
                    },
                    child: const Text(
                      'Services',
                      style: TextStyle(
                        color: CupertinoColors.systemGrey,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  CupertinoButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        CupertinoPageRoute(
                          builder: (context) => const AboutScreen(),
                        ),
                      );
                    },
                    child: const Text(
                      'About',
                      style: TextStyle(
                        color: CupertinoColors.systemGrey,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  CupertinoButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        CupertinoPageRoute(
                          builder: (context) => const ContactScreen(),
                        ),
                      );
                    },
                    child: const Text(
                      'Contact Us',
                      style: TextStyle(
                        color: CupertinoColors.systemGrey,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              )
            : CupertinoButton(
                onPressed: () {
                  // scaffoldKey.currentState?.openDrawer();
                  _showActionSheet(context);
                },
                child: const Icon(CupertinoIcons.bars),
              ),
      ),
      child: const SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ServicesSection(),
            // Banner section...
            // Banner(message: "message", location: BannerLocation.topStart),
            // About section...
            // AboutScreen(),
            // Contact section...
            // ContactSection(),
          ],
        ),
      ),
    );
  }
}

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Our Services'),
      ),
      child: Center(
        child: SingleChildScrollView(
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
                const ServicesSection(),
                CupertinoButton(
                  onPressed: () {
                    // Navigate to a detailed service page
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => HomeV(),
                      ),
                    );
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
                  Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (context) => const Home(),
                    ),
                  );
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
                  Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (context) => const HomeView(),
                    ),
                  );
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

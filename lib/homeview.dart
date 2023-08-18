import 'package:flutter/cupertino.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: const Text('Home'),
        trailing: CupertinoButton(
          onPressed: () {
            // Implement navigation to settings or other actions
          },
          child: const Icon(CupertinoIcons.settings),
        ),
      ),
      child: CustomScrollView(
        slivers: <Widget>[
          const CupertinoSliverNavigationBar(
            middle: Text("Ohhhh yeahhh!!!"),
            // Your app bar details here
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome to Dominic Sltns!',
                        style: CupertinoTheme.of(context)
                            .textTheme
                            .navTitleTextStyle,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'We offer a wide range of services to help your business succeed.',
                        style: CupertinoTheme.of(context).textTheme.textStyle,
                      ),
                    ],
                  ),
                ),
                const ServiceSection(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ServiceSection extends StatelessWidget {
  const ServiceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              'Our Services',
              style: CupertinoTheme.of(context).textTheme.navTitleTextStyle,
            ),
          ),
          SizedBox(
            height: 320,
            child: CupertinoPicker(
              itemExtent: 2,
              onSelectedItemChanged: (int value) {},
              children: const [
                // Example service cards
                ServiceCard('Service 1', 'Lorem ipsum dolor sit amet.'),
                ServiceCard('Service 2', 'Consectetur adipiscing elit.'),
                // Add more service cards as needed
              ],
              // Services options
            ),
          ),
        ],
      ),
    );
  }
}

class ServiceCard extends StatelessWidget {
  final String title;
  final String description;

  const ServiceCard(this.title, this.description, {super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: () {
        // Implement navigation to service details
      },
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: CupertinoTheme.of(context).textTheme.textStyle,
          ),
          const SizedBox(height: 5),
          Text(
            description,
            style: const TextStyle(
              color: CupertinoColors.systemGrey,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}

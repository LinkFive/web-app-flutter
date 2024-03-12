import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:linkfive_flutter_web/src/components/default_card.dart';

class InfoOfferingComponent extends StatelessWidget {
  const InfoOfferingComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 32),
        DefaultCard(
          children: [
            Text(
              "Offerings - Unleash your inner paywall pro!",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 8),
            Text(
                "Imagine your app's paywall as a shop window. Offerings are like the different product bundles and pricing options you display to attract customers!",
                style: Theme.of(context).textTheme.bodyMedium),
            const SizedBox(height: 8),
            Text(
              "With Offerings, you can easily create various combinations of your products and experiment with different prices.  This lets you see what kind of deals resonate best with your users. Think of it like testing different window displays to see which one makes people stop and take a closer look!",
              style: Theme.of(context).textTheme.bodyMedium,
            )
          ],
        ),
      ],
    );
  }
}

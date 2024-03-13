import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:linkfive_flutter_web/src/components/default_card.dart';
import 'package:linkfive_flutter_web/src/repository/api/offerings_model.dart';

class OfferingComponent extends StatelessWidget {
  final DeliveryPackageList data;

  const OfferingComponent(this.data, {super.key});

  @override
  Widget build(BuildContext context) {
    final bool isActive = data.isDefault || data.isActive;
    return DefaultCard(children: [
      Row(
        children: [
          Container(
            width: 16,
            height: 16,
            decoration: BoxDecoration(
                color: isActive ? Colors.green : Colors.amber, borderRadius: const BorderRadius.all(Radius.circular(100))),
          ),
          const SizedBox(width: 8),
          Text(
            switch (data.isDefault) {
              true => "Default Offering",
              false => data.name ?? "no name",
            },
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ],
      )
    ]);
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:linkfive_flutter_web/src/components/default_card.dart';
import 'package:linkfive_flutter_web/src/repository/api/offerings_model.dart';

class OfferingComponent extends StatelessWidget {
  final DeliveryPackageList data;

  const OfferingComponent(this.data, {super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultCard(children: [
      Text(
        switch (data.isDefault) {
          true => "Default Offering",
          false => data.name ?? "no name",
        },
        style: Theme.of(context).textTheme.titleLarge,
      )
    ]);
  }
}

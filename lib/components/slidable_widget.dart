import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:medical_app_mobile/components/colors.dart';

class SlidableWidget extends StatelessWidget {
  final Widget child;
  const SlidableWidget({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Slidable(
      key: const ValueKey(0),
      endActionPane: ActionPane(
        motion: const ScrollMotion(),
        children: [
          SlidableAction(
            onPressed: (context) {},
            backgroundColor: ColorConstant.primaryColor,
            foregroundColor: Colors.white,
            icon: Icons.message,
            label: 'Message',
          ),
        ],
      ),
      child: child,
    );
  }
}

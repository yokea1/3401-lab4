import 'package:flutter/material.dart';

class AppTicketTabs extends StatelessWidget {
  final String firstTab;
  final String secondTab;
  const AppTicketTabs({
    super.key,
    required this.firstTab,
    required this.secondTab,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: const Color(0xFFF4F6FD),
      ),

      child: Row(
        children: [
          AppTabs(tabText: firstTab, tabBorder: false),
          AppTabs(tabText: secondTab, tabBorder: true),
        ],
      ),
    );
  }
}

class AppTabs extends StatelessWidget {
  const AppTabs({super.key, this.tabText = "", this.tabBorder = false});
  final String tabText;
  final bool tabBorder;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 7),
      width: size.width * .44,
      decoration: BoxDecoration(
        color: (tabBorder == false ? Colors.white : Colors.transparent),
        borderRadius:
            (tabBorder == false
                ? const BorderRadius.horizontal(left: Radius.circular(50))
                : const BorderRadius.horizontal(right: Radius.circular(50))),
      ),
      child: Center(child: Text(tabText)),
    );
  }
}

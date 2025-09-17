import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TopBar extends StatelessWidget implements PreferredSizeWidget {
  const TopBar._({required this.title, this.onRefresh, required this.onLogout, required this.isCentered});

  const TopBar.rates({required VoidCallback onRefresh, required VoidCallback onLogout})
      : this._(title: 'Rates', onRefresh: onRefresh, onLogout: onLogout, isCentered: true);

  const TopBar.converter({required VoidCallback onLogout})
      : this._(title: 'Converter', onRefresh: null, onLogout: onLogout, isCentered: false);

  final String title;
  final VoidCallback? onRefresh;
  final VoidCallback onLogout;
  final bool isCentered;

  @override
  Size get preferredSize => const Size.fromHeight(kMinInteractiveDimensionCupertino);

  @override
  Widget build(BuildContext context) {
    return CupertinoNavigationBar(
      middle: isCentered ? Text(title) : null,
      leading: onRefresh != null
          ? CupertinoButton(
              padding: EdgeInsets.zero,
              onPressed: onRefresh,
              child: const Icon(CupertinoIcons.refresh),
            )
          : Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    title,
                    style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                  ),
                ),
      trailing: CupertinoButton(
        padding: EdgeInsets.zero,
        onPressed: onLogout,
        child: const Icon(CupertinoIcons.square_arrow_right),
      ),
      border: const Border(bottom: BorderSide(color: Color(0x33000000), width: 0.0)),
      backgroundColor: Theme.of(context).colorScheme.surface,
    );
  }
}


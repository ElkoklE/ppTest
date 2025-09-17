import 'package:flutter/material.dart';

class ConverterResultCard extends StatelessWidget {
  const ConverterResultCard({super.key, required this.amountText, required this.resultValueText, required this.footerText});

  final String amountText;
  final String resultValueText;
  final String footerText;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        border: Border.all(color: Theme.of(context).dividerColor.withOpacity(0.4)),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(amountText, style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w700)),
            const SizedBox(height: 4),
            const Icon(Icons.swap_vert, size: 18, color: Colors.grey),
            const SizedBox(height: 4),
            Text(resultValueText, style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Theme.of(context).colorScheme.primary, fontWeight: FontWeight.w700)),
            const SizedBox(height: 2),
            Text(footerText, style: const TextStyle(color: Colors.grey)),
          ],
        ),
      ),
    );
  }
}


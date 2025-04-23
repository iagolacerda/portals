import 'package:design_system/app_svg.dart';
import 'package:flutter/material.dart';

class AuthLayout extends StatelessWidget {
  final Widget child;
  const AuthLayout({ super.key, required this.child });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'packages/design_system/assets/background.png',
              fit: BoxFit.cover,
            ),
          ),
  
          Positioned(
            top: 150, 
            left: 120,
            child: AppSvg(assetPath: 'packages/design_system/assets/logo-white.svg', size: 80.0),
          ),
          
          Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(10),
              child: Card(
                elevation: 8,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 450),
                    child: child,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

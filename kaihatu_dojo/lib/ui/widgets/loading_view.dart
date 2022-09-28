import 'dart:io' show Platform;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoadingView extends StatelessWidget {
  const LoadingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 120,
        height: 120,
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.3),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 5),
            _buildProgressIndicator(),
            const SizedBox(height: 20),
            Text(
              'ロード中 ...',
              style: TextStyle(
                color: Colors.grey.shade800,
                fontWeight: FontWeight.w900,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProgressIndicator() {
    return Platform.isIOS
        ? CupertinoActivityIndicator(
            radius: 16,
            color: Colors.grey.shade800,
          )
        : CircularProgressIndicator(
            color: Colors.grey.shade800,
          );
  }
}

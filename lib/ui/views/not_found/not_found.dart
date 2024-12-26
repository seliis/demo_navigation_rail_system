import "package:flutter/material.dart";
import "package:go_router/go_router.dart";

final class NotFound extends StatelessWidget {
  const NotFound({super.key});

  @override
  Widget build(context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 256,
          height: 48,
          child: ElevatedButton(
            onPressed: () {
              context.go("/");
            },
            child: Text("Can't Find Page"),
          ),
        ),
      ),
    );
  }
}

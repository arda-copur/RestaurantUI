
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      autocorrect: true,
      cursorColor: Colors.white,
      decoration: InputDecoration(enabled: true,
      enabledBorder: OutlineInputBorder(borderSide: const BorderSide(color: Colors.white),
      borderRadius: BorderRadius.circular(28)
      ),
        contentPadding: const EdgeInsets.all(20),
        hintText: "Sipariş verebilirsiniz...",
        hintStyle: const TextStyle(color: Colors.black87,fontWeight: FontWeight.bold),
        fillColor: Colors.white,
        prefixIcon: Icon(Icons.search,color: Colors.red[700],),
        filled: true,
      ),
    );
  }
}

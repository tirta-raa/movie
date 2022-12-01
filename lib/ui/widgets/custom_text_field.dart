part of 'widgets.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  String text;
  bool obscureText;
  TextEditingController? controller;
  Function(String)? onChanged;

  CustomTextField({
    super.key,
    this.text = "",
    this.obscureText = false,
    this.controller,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: const BorderSide(
            color: Color(0XFFE4E4E4),
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: yellowColor),
        ),
        errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: redColor),
        ),
        labelText: text,
      ),
    );
  }
}

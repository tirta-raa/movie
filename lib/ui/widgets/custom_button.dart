part of 'widgets.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  final String text;
  double margin;
  double width;
  Color? color;
  Function()? onPressed;

  CustomButton({
    super.key,
    required this.text,
    this.color = const Color(0XFF503E9D),
    this.onPressed,
    this.width = double.infinity,
    this.margin = 67,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: margin,
      ),
      width: width,
      height: 45,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: textStyleMedium.copyWith(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}

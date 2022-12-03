part of 'pages.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    logoImage() {
      return Image.asset(
        'assets/logo.png',
        width: 160,
      );
    }

    titleText() {
      return Text(
        'New Experience',
        style: textStyleMedium.copyWith(
          fontSize: 20,
        ),
      );
    }

    subTitleText() {
      return Text(
        'Watch a new movie much \n easier than any before',
        style: textStyleLight.copyWith(
          fontSize: 16,
        ),
        textAlign: TextAlign.center,
      );
    }

    getStartedButton() {
      return CustomButton(
        text: 'Get Started',
        onPressed: () {},
      );
    }

    signInButtonText() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Already have an account?',
            style: textStyleLight.copyWith(
              fontSize: 14,
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'Sign In',
              style: textStyleMedium.copyWith(
                fontSize: 14,
                color: blueColor,
              ),
            ),
          ),
        ],
      );
    }

    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              logoImage(),
              70.0.heightBox,
              titleText(),
              16.0.heightBox,
              subTitleText(),
              70.0.heightBox,
              getStartedButton(),
              20.0.heightBox,
              signInButtonText(),
            ],
          ),
        ),
      ),
    );
  }
}

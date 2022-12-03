part of 'pages.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isEmailValid = false;
  bool isPasswordValid = false;
  bool isSigningIn = false;

  @override
  Widget build(BuildContext context) {
    logoImage() {
      return Image.asset(
        'assets/logo.png',
        width: 70,
      );
    }

    headlineText() {
      return Text(
        'Welcome Back,\nExplorer!',
        style: textStyleMedium.copyWith(fontSize: 20),
      );
    }

    emailTextField() {
      return CustomTextField(
        controller: emailController,
        onChanged: (text) {
          setState(() {
            isEmailValid = EmailValidator.validate(text);
          });
        },
        text: 'Email Address',
      );
    }

    passwordTextField() {
      return CustomTextField(
        obscureText: true,
        controller: passwordController,
        onChanged: (text) {
          setState(() {
            isPasswordValid = text.length >= 6;
          });
        },
        text: 'Password',
      );
    }

    arrowButton() {
      return Center(
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: (isEmailValid &&
                    isPasswordValid) // if email and password are validate change the color
                ? blueColor
                : const Color(0xFFE4E4E4),
            shape: const CircleBorder(),
            padding: const EdgeInsets.all(14),
            elevation: 0.0, // remove shadow
            shadowColor: Colors.transparent, // remove shadow
          ),
          child: Icon(
            Icons.arrow_forward,
            color: (isEmailValid &&
                    isPasswordValid) // if email and password are validate change the color
                ? Colors.white
                : const Color(0XFFBEBEBE),
          ),
        ),
      );
    }

    signUpTextButton() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Start fresh now?',
            style: textStyleLight.copyWith(
              fontSize: 14,
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'Sign Up',
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
        child: Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 30,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                logoImage(),
                70.0.heightBox,
                headlineText(),
                40.0.heightBox,
                emailTextField(),
                16.0.heightBox,
                passwordTextField(),
                30.0.heightBox,
                arrowButton(),
                50.0.heightBox,
                signUpTextButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

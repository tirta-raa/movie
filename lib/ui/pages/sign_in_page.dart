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
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 30,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/logo.png',
                width: 70,
              ),
              70.0.heightBox,
              Text(
                'Welcome Back,\nExplorer!',
                style: textStyleMedium.copyWith(fontSize: 20),
              ),
              height40,
              CustomTextField(
                controller: emailController,
                onChanged: (text) {
                  setState(() {
                    isEmailValid = EmailValidator.validate(text);
                  });
                },
                text: 'Email Address',
              ),
              height16,
              CustomTextField(
                obscureText: true,
                controller: passwordController,
                onChanged: (text) {
                  setState(() {
                    isPasswordValid = text.length >= 6;
                  });
                },
                text: 'Password',
              ),
              30.0.heightBox,
            ],
          ),
        ),
      ),
    );
  }
}

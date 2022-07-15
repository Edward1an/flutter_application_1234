import 'package:flutter/material.dart';
class AuthWidget extends StatefulWidget {
   const AuthWidget({Key? key}) : super(key: key);

  @override
  State<AuthWidget> createState() => _AuthWidgetState();
}

class _AuthWidgetState extends State<AuthWidget> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  const Center(
          child: Text(
              'Login to your account'
            ),
        )),
        body: ListView(
        children:  const [
          _HeaderWidget(),
          SizedBox(height: 10,),
          _UserInfoWidget(),
          SizedBox(height: 10,),

          
      ],
    ),    
    );
  }
}
class _HeaderWidget extends StatelessWidget {
  final style2 =  const TextStyle(fontSize: 16, fontWeight: FontWeight.w400);
   const _HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
      children:   [
         const SizedBox(height: 20,),
          const Align(
           alignment: Alignment.topLeft,
           child: Text('Enter your login and password',
            style: TextStyle(fontSize: 23,
                fontWeight: FontWeight.bold ),
           ),
         ),
        const SizedBox(height: 70,),
         Text('Залогиньтесь потому что так надо g suffused sd gadfly defused disgust gods sd gsd ssd gods sedges sdgsdgsdgsdgsdfgsd gods hiking ghjkghjkgkghjkhkjjhggggghghkhgjghggghjkghghhghjhgjhgjghjghj', style: style2),
        const SizedBox(height: 40,),
        Text('If yoy didn`t get your verification email', style: style2,),

      ],
    );
  }
}
class _UserInfoWidget extends StatefulWidget {
   const _UserInfoWidget({Key? key}) : super(key: key);

  @override
  State<_UserInfoWidget> createState() => _UserInfoWidgetState();
}

class _UserInfoWidgetState extends State<_UserInfoWidget> {
  final _loginTextController = TextEditingController();
  final _passwordTextController = TextEditingController();
  String? errorText;
  void _auth(){
    final login = _loginTextController.text;
    final password = _passwordTextController.text;
    if(login == '' && password == ''){
      errorText = null;
      Navigator.of(context).pushNamed('/main_screen');
    } else{
      errorText = 'wrong login or password';

    }
    setState((){});
  }
  void _resetPassword(){
    Navigator.of(context).pushNamed('/reset_password');
  }
  void _register(){
    Navigator.of(context).pushNamed('/register');
  }
  void _verifyEmail(){
    Navigator.of(context).pushNamed('/verify');
  }
  final style =  const TextStyle(fontSize: 20, fontWeight: FontWeight.w400);
  final decorator =  const InputDecoration(
      border: OutlineInputBorder(),
      contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    isCollapsed: false,

  );


  @override
  Widget build(BuildContext context) {
    final errorText = this.errorText;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:  [
        ElevatedButton(onPressed: _verifyEmail, child: const Text('Verify email')),
        const SizedBox(height: 10,),
        if(errorText != null)...[
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(errorText, style: const TextStyle(fontSize: 16, color: Colors.red),),
          )

           ]
        ,
        Text('Username', style: style,),
        Padding(
          padding:  const EdgeInsets.all(8.0),
          child: TextField(
            decoration: decorator,controller: _loginTextController, 
            ),
        ),
         const SizedBox(height: 20,),
        Text('Password', style: style,),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            decoration: decorator, obscureText: true, controller: _passwordTextController,),
        ),
    Row(
    children: [
    Padding(
    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
    child: ElevatedButton(
    onPressed: _auth,
    child: const Text('Login')),
    ),
    const SizedBox(width: 5,),
    Padding(
    padding: const EdgeInsets.symmetric(horizontal: 12),
    child: TextButton(onPressed: _resetPassword, child: const Text('Reset password')),
    ),
    Padding(
    padding: const EdgeInsets.symmetric(horizontal: 12),
    child: TextButton(onPressed: _register, child: const Text('Register')),
    ),
    ],
    )
      ],
    );
  }
}



import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Image Upload',
      initialRoute: '/login',
      routes: {
        '/login': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
        '/imageUploader': (context) => ImageUploader(),
      },
    );
  }
}

//
class CustomTextFields extends StatelessWidget {
  const CustomTextFields({
    Key? key,
    required this.hint,
    required this.obscureText,
    required this.enable,
    this.controller,
    this.validator,
    this.onChanged,
    this.initialValue,
  }) : super(key: key);

  final String hint;
  final bool enable;
  final bool obscureText;
  final TextEditingController? controller;
  final String? initialValue;
  final validator;
  final onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.purple,
      ),
      child: TextFormField(
        enabled: enable,
        initialValue: initialValue,
        textAlign: TextAlign.start,
        obscureText: obscureText,
        obscuringCharacter: '*',
        validator: validator,
        onChanged: onChanged,
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(
              fontSize: 14, fontWeight: FontWeight.w700, color: Colors.white),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(
              color: Colors.purple,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(
              color: Colors.purple,
            ),
          ),
        ),
      ),
    );
  }
}

class CustomeTextFieldSetorSampah extends StatelessWidget {
  const CustomeTextFieldSetorSampah({
    Key? key,
    required this.hint,
    required this.obscureText,
    required this.enable,
    this.controller,
    this.validator,
    this.onChanged,
    this.initialValue,
  }) : super(key: key);

  final String hint;
  final bool enable;
  final bool obscureText;
  final TextEditingController? controller;
  final String? initialValue;
  final validator;
  final onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: TextFormField(
        enabled: enable,
        initialValue: initialValue,
        textAlign: TextAlign.start,
        obscureText: obscureText,
        obscuringCharacter: '*',
        validator: validator,
        onChanged: onChanged,
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(
              fontSize: 14, fontWeight: FontWeight.bold, color: Colors.purple),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(
              color: Colors.transparent,
            ),
          ),
        ),
      ),
    );
  }
}

Widget reusableText(
    String text, Color color, double fontSize, FontWeight fontWeight) {
  return Text(
    text,
    style: TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: fontSize,
    ),
  );
}
//

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
      ),
      body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/OIPOI.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Form(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/download.jpg',
                    scale: 2,
                  ),
                  Text(
                    'RECFACE',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  CustomTextFields(
                    hint: 'Nama Lengkap',
                    obscureText: false,
                    enable: true,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  CustomTextFields(
                    hint: 'Username',
                    obscureText: false,
                    enable: true,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  CustomTextFields(
                    hint: 'Email',
                    obscureText: false,
                    enable: true,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  CustomTextFields(
                    hint: 'Alamat',
                    obscureText: false,
                    enable: true,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  CustomTextFields(
                    hint: 'Nomor Handphone',
                    obscureText: false,
                    enable: true,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  CustomTextFields(
                    hint: 'Buat Password',
                    obscureText: true,
                    enable: true,
                  ),
                  SizedBox(
                    height: 1,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(
                        width: 5,
                      ),
                      Transform.scale(
                        scale: 1.5,
                        child: CircleAvatar(
                          backgroundColor: Colors.grey.shade400,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      reusableText('Belum punya Akun?', Colors.white, 14,
                          FontWeight.bold),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/login');
                        },
                        child: Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/login');
                    },
                    child: Text(
                      'Registrasi',
                      style: TextStyle(fontSize: 20),
                    ),
                    style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}

//

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/OIPO.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/download.jpg',
                  scale: 1.5,
                ),
                // SizedBox(
                //   height: MediaQueryHeight * 0.005,
                // ),
                Text(
                  'AISRECFACE',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  'AI FACE RECOGNITION',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                CustomTextFields(
                  hint: 'Username',
                  obscureText: false,
                  enable: true,
                ),
                SizedBox(
                  height: 12,
                ),
                CustomTextFields(
                  hint: 'Password',
                  obscureText: true,
                  enable: true,
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Belum punya Akun?',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/register');
                      },
                      child: Text(
                        'Register',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                // SizedBox(
                //   height: MediaQueryHeight * 0.02,
                // ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/imageUploader');
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(fontSize: 20),
                  ),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ImageUploader extends StatefulWidget {
  @override
  _ImageUploaderState createState() => _ImageUploaderState();
}

class _ImageUploaderState extends State<ImageUploader> {
  File? _image;
  bool isUploading = false;
  String responseMessage = '';

  Future getImage(ImageSource source) async {
    final image = await ImagePicker().getImage(source: source);

    setState(() {
      if (image != null) {
        _image = File(image.path);
        responseMessage = '';
      } else {
        print('No image selected.');
      }
    });
  }

  Future uploadImage() async {
    if (_image == null) {
      print('No image selected.');
      return;
    }

    setState(() {
      isUploading = true;
    });

    final uri = Uri.parse("http://172.20.10.2:5000/upload");
    var request = http.MultipartRequest('POST', uri);
    request.files.add(await http.MultipartFile.fromPath('image', _image!.path));
    var response = await request.send();
    if (response.statusCode == 200) {
      print('Image uploaded');
      String responseBody = await response.stream.bytesToString();
      setState(() {
        responseMessage = responseBody;
      });
    } else {
      print('Image not uploaded');
    }

    setState(() {
      isUploading = false;
    });
  }

  void resetImage() {
    setState(() {
      _image = null;
      responseMessage = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AIRECFACE'),
        actions: [
          IconButton(
            onPressed: resetImage,
            icon: Icon(Icons.refresh),
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _image != null
                  ? Expanded(
                      child: AspectRatio(
                        aspectRatio: 1.0,
                        child: Image.file(
                          _image!,
                          fit: BoxFit.contain,
                        ),
                      ),
                    )
                  : Text('No image selected.'),
              Text(
                responseMessage,
                style: TextStyle(
                  color: Color.fromARGB(255, 207, 242, 204),
                  backgroundColor: Color.fromARGB(255, 115, 92, 137),
                ),
              ),
              SizedBox(height: 16),
              Visibility(
                visible: _image != null && !isUploading,
                child: Padding(
                  padding: EdgeInsets.all(12.0),
                  child: ElevatedButton(
                    onPressed: uploadImage,
                    child: Text('Scan'),
                  ),
                ),
              ),
              Visibility(
                visible: isUploading,
                child: CircularProgressIndicator(),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () => getImage(ImageSource.camera),
            tooltip: 'Take Photo',
            child: Icon(Icons.camera_alt),
          ),
          SizedBox(height: 16),
          FloatingActionButton(
            onPressed: () => getImage(ImageSource.gallery),
            tooltip: 'Pick Image',
            child: Icon(Icons.add_a_photo),
          ),
        ],
      ),
    );
  }
}

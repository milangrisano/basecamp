import 'package:flutter/material.dart';
import 'package:basecamp/export.dart';



class LocateUs extends StatelessWidget {
  const LocateUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 100),
      height: 500,
      width: double.infinity,
      // color: Colors.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween ,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            // color: Colors.black,
            width: 400,
            height: size.height,
            child: Column(
              children: [
                const TextFieldBox(
                  name: 'Your Name',
                  hint: 'Full Name',
                  fontsize: 14
                ),
                const TextFieldBox(
                  name: 'email',
                  hint: 'Write your email',
                  fontsize: 14
                ),
                const TextFieldBox(
                  name: 'Phone',
                  hint: 'Write your phone',
                  fontsize: 14
                ),
                const TextFieldBox(
                  name: 'Message',
                  hint: 'Write us a message',
                  fontsize: 14,
                  numbers: 8,
                ),
                ElevatedButton.icon(
                  onPressed: (){},
                  icon: const Icon(Icons.arrow_forward, color: Colors.black),
                  label: const LettersBold(text: 'Send', color: Colors.black),
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xffCDFF00),
                    elevation: 4,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40))
                  ),
                ),
              ],
            ),            
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            width: 275,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const[
                Letters(
                  text: 'Location',
                  fontSize: 18,
                  color: Color(0xffBEBEBE),
                ),
                SizedBox(height: 10),
                Letters(
                  text: 'Calle los Conquistadores #16, Arroyo Hondo.',
                  fontSize: 16,
                ),
                SizedBox(height: 20),
                Letters(
                  text: 'Phone',
                  fontSize: 18,
                  color: Color(0xffBEBEBE),
                ),
                SizedBox(height: 10),
                Letters(
                  text: '809-566-1343',
                  fontSize: 16,
                ),
                SizedBox(height: 20),
                Letters(
                  text: 'Email',
                  fontSize: 18,
                  color: Color(0xffBEBEBE),
                ),
                SizedBox(height: 10),
                Letters(
                  text: 'info@basecampstudio.net',
                  fontSize: 16,
                ),
                SizedBox(height: 20),
                Letters(
                  text: 'Redes Sociales',
                  fontSize: 18,
                  color: Color(0xffBEBEBE),
                ),
                SocialMediaHorizontal()
              ],
            ),
          ),
          Container(
            width: 400,
            height: 400,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: Colors.red,
              image: DecorationImage(
                image: AssetImage('assets/maps.png'),
                fit: BoxFit.cover
              )
            ),
            
          )
        ],
      ),
    );
  }
}


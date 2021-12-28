import 'package:catalog/utils/routes.dart';
import 'package:flutter/material.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  _LoginpageState createState() => _LoginpageState();

}

class _LoginpageState extends State<Loginpage> {

  String name="";
  bool changeButton=false;
  
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset(
            "assets/images/login_image.png",
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 20.00,
          ),
          Text(
            "Welcome $name",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20.00,
          ),

          
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 32),
            child: Column(children: [
             
                 TextFormField(
                decoration: InputDecoration(hintText: (" Enter Username"),
                labelText: (" Username"),),
                onChanged:(values){
                  name = values;
                  setState(() {});
                },
                ),
              
                 TextFormField( 
                   obscureText: true,
                   decoration: InputDecoration(hintText: (" Enter Password"),
                   labelText: (" Password"),),
                  ),

                SizedBox(
                 height: 50.00,
                ),

                InkWell(
                  onTap: () async {
                    setState(() {
                      changeButton=true;
                    },);
                    
                    await Future.delayed(Duration(seconds: 1));
                    Navigator.pushNamed(context, MyRoutes.homeRout); 
                  }, 

                    child: AnimatedContainer(
                           duration: Duration(seconds : 1),
                           width: changeButton ? 50 : 150,
                           height: 50,
                           alignment: Alignment.center,
                           
                      child:changeButton?Icon(Icons.done,color:Colors.white): Text("Login",
                             style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                     fontSize: 18
                                    ),
                                    ),
                        decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(changeButton ? 50 : 8)),
                    ),
                    ),

                

                //ElevatedButton(onPressed: () {Navigator.pushNamed(context, MyRoutes.homeRout);}, child: Text("Login"),style: TextButton.styleFrom(),)
            ],),
          )
        ],
      ),
    );
  }
}

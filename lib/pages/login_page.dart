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

  final _formKey = GlobalKey<FormState>();

  moveTOHome(BuildContext context) async {
    if(_formKey.currentState!.validate()){
    setState(() {
                          changeButton=true;
                        },);
                        
                        await Future.delayed(Duration(seconds: 1));
                        await Navigator.pushNamed(context, MyRoutes.homeRout); 
      
                        setState(() {
                          changeButton=false;
                        },);
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            Image.asset(
              "assets/images/loginphoto.png",
              fit: BoxFit.cover,
              height: 250,
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
                  labelText: (" Username"),
                  ),

                  validator: (value){
                    if(value!.isEmpty){
                        return "user name is not be empty";
                    }
                    return null;
                  },
                  onChanged:(values){
                    name = values;
                    setState(() {});
                  },
                  ),
                
                   TextFormField( 
                     obscureText: true,
                     decoration: InputDecoration(hintText: (" Enter Password"),
                     labelText: (" Password"),),
                     validator: (value){
                    if(value!.isEmpty){
                        return "password is not be empty";
                    }
                    else if(value.length<6){
                      return "password lenght should be atleast 6 number";
                    }
                    return null;
                  },
                    ),
      
                  SizedBox(
                   height: 50.00,
                  ),
      
                  Material(
      
                            color: Colors.deepPurple,
                            borderRadius: BorderRadius.circular(changeButton ? 50 : 8),
                    
                    child: InkWell(
                      onTap: () =>moveTOHome(context),
                  
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
                            
                        ),
                        ),
                  ),
      
                  
      
                  //ElevatedButton(onPressed: () {Navigator.pushNamed(context, MyRoutes.homeRout);}, child: Text("Login"),style: TextButton.styleFrom(),)
              ],),
            )
          ],
        ),
      ),
    );
  }
}

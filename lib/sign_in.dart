import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
enum RadioButtonValue { Signin, Signup }  
class SignIn extends StatefulWidget {
   SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
 final _loginController = TextEditingController();
final _countryCodeController = TextEditingController();
    final _phoneNumberController = TextEditingController();
    bool _isLogin=true;
     RadioButtonValue _radioValue = RadioButtonValue.Signin;  

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      resizeToAvoidBottomInset: false, 
      backgroundColor: Colors.white,
      body: Column(
        
        children: [
          Container(
            height: 20.h, 
            width: 100.w,
            color: Color.fromARGB(255, 2, 10, 32), 
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center, 
              children: [
                Text("Logo", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w800, fontSize: 35),),
                 Text("Tagline Here", style: TextStyle(color: Colors.white, fontSize: 15),), 
              ],
            ),

          ), 
          Container(
            height: 80.h, 
            width: 100.w, 
            child: Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),  
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,  
                children: [
                 SizedBox(height: 5.h,), 
              Text("Welcome Back!", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w800, fontSize: 24),), 
               Text("Enter your credential to access your\naccount", style: TextStyle(color: Colors.black, fontSize: 13),), 
             SizedBox(height: 3.h,),   
             
               Container(
                //  height: 25.h,   
                 width: 100.w, 
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 240, 243, 240),
        boxShadow: [ 
          BoxShadow(color: Color.fromARGB(255, 89, 88, 88), spreadRadius: .5),
        ],
        borderRadius:
            BorderRadius.all(Radius.circular(20)), 
      ),
      child: Column(
        children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start, 
          children: [
           
           Radio(
            activeColor: const Color.fromARGB(255, 9, 157, 14),  
            // overlayColor: Colors.black, 
            focusColor: Colors.black,  
            value: RadioButtonValue.Signin, groupValue: _radioValue, onChanged: (RadioButtonValue? v){
            setState(() {
              _radioValue=v!; 
              _isLogin=true;
            });
          }),
           Column(
            crossAxisAlignment: CrossAxisAlignment.start, 
            children: const [
             Text("Log In", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600,  fontSize: 16),),
              Text("to continue", style: TextStyle(color: Colors.black,fontSize: 12),),
           
             
           ],),
        ],), 
       Visibility( 
        visible: _isLogin,

         child: Container(
          height: 15.h, 
          margin: EdgeInsets.only(left: 10.w, right: 10.w ,bottom: 7.w),       
           child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,  
            children: [
             Padding(
               padding: const EdgeInsets.only(top: 10), 
               child: TextField(
                keyboardAppearance:  Brightness.light,  
            cursorColor: Colors.white,  
                  controller: _loginController,
                  decoration: InputDecoration(
                    
                    filled: true, 
                    fillColor: Colors.white,  
                    contentPadding: const EdgeInsets.only(left: 10),
                    border:  OutlineInputBorder(borderRadius: BorderRadius.circular(7)),
                    hintStyle: TextStyle(
                        color: Colors.black.withOpacity(.3),
                        fontSize: 14),
                    hintText: 'Phone Number / Username',
                  ), 
                ),
             ),   
               ClipRRect(
                        borderRadius: BorderRadius.circular(7),    
                        child: Container(
                          color:  Color.fromARGB(255, 2, 10, 32),   
                          width: 100.w,
                          height: 5.h, 
                          child: TextButton(
                            style: TextButton.styleFrom(
                              primary: Colors.white,
                              textStyle: const TextStyle(fontSize: 15), 
                            ),
                            onPressed: () {},
                            child: const Text(
                              'Log In', 
                            ),
                          ),
                        ),
                      ), 
           ],),
         ),
       )
        
        
      ],),
               ), 
              
SizedBox(height: 3.h,),  
               Container(
                //  height: 25.h,   
                 width: 100.w, 
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 240, 243, 240),
        boxShadow: [ 
          BoxShadow(color: Color.fromARGB(255, 89, 88, 88), spreadRadius: .5),
        ],
        borderRadius:
            BorderRadius.all(Radius.circular(20)), 
      ),
      child: Column(
        children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start, 
          children: [
           
           Radio(
            activeColor: const Color.fromARGB(255, 9, 157, 14),  
            // overlayColor: Colors.black, 
            focusColor: Colors.black,  
            value: RadioButtonValue.Signup, groupValue: _radioValue, onChanged: (RadioButtonValue? v){
            setState(() {
              _radioValue=v!; 
              _isLogin=false;
            });
          }),
           Column(
            crossAxisAlignment: CrossAxisAlignment.start, 
            children: const [
             Text("I'm new here", style: TextStyle(color:  Color.fromARGB(255, 9, 157, 14), fontWeight: FontWeight.w500,fontSize: 13),),
              Text("Create New Account", style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,  fontSize: 14),),
             
           ],),
        ],), 
       Visibility( 
        visible: !_isLogin,
         child: Container(
          height: 20.h,      
          margin: EdgeInsets.only(left: 10.w, right: 10.w ,bottom: 5.w),        
           child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,  
            // crossAxisAlignment: CrossAxisAlignment.start, 
            children: [
             Padding(
               padding: const EdgeInsets.only(top: 10), 
               child:    Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 50,
                      child: TextField(
                        keyboardType: TextInputType.none,
                        controller: _countryCodeController,
                        decoration: const InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding: EdgeInsets.only(left: 12),
                          border:  OutlineInputBorder(borderRadius: BorderRadius.horizontal(left: Radius.circular(7))),
                          hintStyle: TextStyle(
                              color: Colors.black, 
                              fontSize: 14),
                          hintText: '+91',
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 59.w,    
                       child: TextField(

                        keyboardType: TextInputType.number,
                        controller: _phoneNumberController, 
                        decoration: InputDecoration(
                          filled: true, 
                          fillColor: Colors.white, 
                          contentPadding: const EdgeInsets.only(left: 10),
                          border:  OutlineInputBorder(borderRadius: BorderRadius.horizontal(right: Radius.circular(7) )),
                          hintStyle: TextStyle(
                              color: Colors.black.withOpacity(.3),
                              fontSize: 14),
                          hintText: 'Phone Number', 
                        ),
                      ),
                    ),
                   
                  ],
                ),
                
             ),   
               ClipRRect(
                        borderRadius: BorderRadius.circular(7),    
                        child: Container(
                          color:  Color.fromARGB(255, 2, 10, 32),   
                          width: 100.w,
                          height: 5.h, 
                          child: TextButton(
                            style: TextButton.styleFrom(
                              primary: Colors.white,
                              textStyle: const TextStyle(fontSize: 15), 
                            ),
                            onPressed: () {},
                            child: const Text(
                              'Next',  
                            ),
                          ),
                        ),
                      ), 
                     Container(
                      alignment: Alignment.bottomLeft, 
                       child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start, 
                        children: [
                        //  SizedBox(
                        //   width: 100.w, 
                        //   child: FittedBox(child: Text("By creating an account or logging in, You'r agree to Our", style: TextStyle(color: Colors.black,fontStyle: FontStyle.italic,  fontSize: 8),))),
                        //    SizedBox(
                        //   width: 50.w,   
                        //   child: FittedBox(child: Text("Conditions of use and Privacy Policy", style: TextStyle(color: Colors.black,fontStyle: FontStyle.italic,  fontSize: 8),))), 
                       Text("By creating an account or logging in, You'r agree to Our", style: TextStyle(color: Colors.black,fontStyle: FontStyle.italic,  fontSize: 10),), 
                       RichText(
                       text: new TextSpan(
                         // Note: Styles for TextSpans must be explicitly defined.
                         // Child text spans will inherit styles from parent
                         style: new TextStyle(
                           fontSize: 10.0,
                           color: Colors.black,
                           fontStyle: FontStyle.italic, 
                         ),
                         children: <TextSpan>[
                           new TextSpan(text: "Conditions of use ",style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold)),
                           new TextSpan(text: "and " ), 
                           new TextSpan(text: "Privacy Policy",style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold)), 
                           // new TextSpan(text: 'World', style: new TextStyle(fontWeight: FontWeight.bold)),
                         ],
                       ),
                      ),
                       ],),
                     )
           ],),
         ),
       )
        
        
      ],),
               )
              
              ],),
            ),
          ) 
         
        ],
      ),
    );
  }
} 
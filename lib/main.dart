/*
!UNDERSTANDING CONST VALUES

in vscode blue color is not an error but there is some improvement potential. just check and scroll down 

Use 'const' with the constructor to improve performance.

what is this const thing? 
const is a keyword provided by dart. it helps dart to optimize the runtime performance of our app. 
for example this text widget will be stored internally in the memory of the device
and no matter if we use const or not. but if we use const that same text widget when used for the second time in the app
that existing memory will be reused instead of a second memory object being created. so using const allows start to reuse values.
so basically making your app more memory efficient. 

!BUILDING MORE COMPLEX WIDGETS

MaterialApp widget:  is the root widget which is setting up the overall app.
Scaffold widget: is a widget that in the end helps us with setting up a good looking screen in our app. 

void main() {
  runApp(const MaterialApp(home: Text('Hello World!')));
}

we should wrap this Text widget with Scaffold widget. Scaffold has a body argument for app's body part.
and we have center widget that we can use center our text widget. so it's a combination of widgets always...

dart has a good feature you can add , after all ) except the last one who has a semicolon at the end. 
so now ctrl + alt + f will edit your code in windows vscode editor. now we have much more readable code. 

!UNDERSTANDING TYPES
dart is a type-safe language. all values that we are working with are of certain types.

'Hello world' : String | Object
25 : int | num | Object
MaterialApp : MaterialApp | Widget | Object

values can be of multiple types. for example int is much more specific type. we'll check it later. 
it's type safe because with that way you can't use Text(209)

all values is an object. widgets in flutter are also just objects in the end. 
objects are core consept for dart. because in the end objects = data structures in memory

!LETS DO SOME THINGS
container is a widget that doesn't support setting it to const. 
therefore you also can't set some parent widget that's higher up in this widget tree to const. 
IDE will tell you anyway. 

!!SO

For example Container is a widget and it has a Decoration? decoration, Decoration is a type too. 
so it has a named argument and it is not required. but let's use it. So it wants 

{Decoration? decoration}
Type: Decoration?

and we can use BoxDecoration because BoxDecoration is also extends from Decoration class. 
We will learn class concept too it's ok for now. 

!GENERIC TYPES

generic types are flexible types that work together with other types. 
for example List is a type built in Dart that quite flexible. 

for example:
[2,3,4]  or ["deneme", "haha"]

List<Which type of values maybe in that list>

in dart we can create a list with [...]



 */

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.black,
                Colors.white,
              ],
            ),
          ),
          child: const Center(
            child: Text(
              'Hello World!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
        ),
      ),
    ),
  );
}

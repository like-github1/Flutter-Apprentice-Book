# Flutter-Apprentice-Book
# Flutter app development Guidelines 

* Using Google fonts

The google_fonts package supports over 977 fonts to help you style your text. It’s
already included pubspec.yaml and you have already added it to the app when
clicking Pub Get before. You’ll use this package to apply a custom font to your theme
class.

* Defining a theme class called fooderlich_theme.dart inside Lib 

To share colors and font styles throughout your app, you’ll provide a ThemeData
object to MaterialApp. In the lib directory, open fooderlich_theme.dart, which
contains a predefined theme for your app.

This code does the following in fooderlich_theme.dart:
1. Declares a TextTheme called lightTextTheme, which uses the Google font Open
Sans and has a predefined font size and weight. Most importantly, the color of
the text is black.
2. Then it defines darkTextTheme. In this case, the text is white.
3. Next, it defines a static method, light, which returns the color tones for a light
theme using the lightTextTheme you created in step 1.
4. Finally, it declares a static method, dark, which returns the color tones for a dark
theme using the darkTextTheme you created in step 2.
Your next step is to utilize the theme

Note: It’s generally a good idea to establish a common theme object for your
app — especially when you work with designers. That gives you a single
source of truth to access your theme across all your widgets

* App structure and navigation
Establishing your app’s structure from the beginning is important for the user
experience. Applying the right navigation structure makes it easy for your users to
navigate the information in your app.
Fooderlich uses the Scaffold widget for its starting app structure. Scaffold is one
of the most commonly-used Material widgets in Flutter. Next, you’ll learn how to
implement it in your app.
Using Scaffold
The Scaffold widget implements all your basic visual layout structure needs. It’s
composed of the following parts:
• AppBar
• BottomSheet
• BottomNavigationBar
• Drawer
• FloatingActionButton
• SnackBar
Scaffold has a lot of functionality out of the box!
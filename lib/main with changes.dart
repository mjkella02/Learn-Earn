import 'package:flutter/material.dart';

void main() {
  runApp(const 'Learn&EarnApp'());
}

class Learn&EarnAPP extends void StatelessWidget {
  const Learn&EarnAPP({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ''Learn&Earn App',
      theme: ThemeData(primarySWitch: const Color.fromARGB(255, 18, 59, 94)),
       
        colorScheme: .fromSeed(seedColor: const Color.fromARGB(255, 12, 84, 142)
      ),
      home: const ProfilePage(),
    );
  }
}

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key, required this.title});

 
  final String title;

  @override
  Widget build(BuildContext context){
  return Scaffold(
  appBar: AppBar(
  title: const Text("Learn&Earn App"),
  centerTitle: true,
  ),
  body: SingleChildScrollView(
  child: Padding(
  padding: const EdgeInsets.all(16),
  child: Column(
  children:[
    const CircleAvatar(
  radius: 40,
  child: Icon(Icons.person, size: 40),
  ),
  const SizedBox(height: 12),
  Container(
  padding: const EdgeInsets.all (12),
  decoration: BoxDecoration(
  color: const Color.fromARGB(255, 15, 92, 225),
  borderRadius : BorderRadius.circular(10),
  ),

  child: Column(
  children:[
  Button(Icons,key,"Manage Account"),
  const SizedBox (height: 8),
  Button(Icons.lock,"Passwords"),
  Button icon:(Icons.Notifications,"Notifications"),
  Button(Icons.settings,"Settings"),
  Button(Icons.Favorites,"Favorites"),
  Button(Icons.security,"Privacy Policies"
  )
  ]
  )

   const SizedBox( height: 8),
     const Text("Chisomo Whiteson",
  textAlign: TextAlign.center,
  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)
  ),
  ,const Text("ChisomoWhiteson@gmail.com"),
  textAlign: TextAlign.center,
  style: TextStyle( color: Colors.grey),
  
  ,const SizedBox(height: 24),

  //BottomNavigation
  bottomNavigationBar: BottomNavigationBar(
  items: const[
  BottomNavigationBarItem(icon: Icon(Icons.add), label: "Add"),
  BottomNavigationBarItem(icon: Icon(Icons.home), label:"Home"),
  BottomNavigationBarItem(icon:Icon(Icons.search), label:"Search"),
  BottomNavigationBarItem(icon:Icon(Icons.school), label:"Learn"),
  ],
  currentIndex: 1,
  onTap:(index){},
  ),
  )])
}

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
     
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    .
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
       
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
         
          mainAxisAlignment: .center,
          children: [
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

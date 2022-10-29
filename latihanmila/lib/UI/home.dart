import 'package:flutter/material.dart';
import 'package:latihanmila/UI/produklist.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    print(index);
    switch (index) {
      case 0:
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const Home(),
            ));
        break;
      case 1:
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => produklist(),
            ));
        break;
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Update AppBar
      appBar: AppBar(
          title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[Text('Home')]),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                print('click seacrh');
              },
            ),
            IconButton(
              icon: const Icon(Icons.notifications_active),
              onPressed: () {
                print('click seacrh');
              },
            ),
          ]),
      // widget drawer
      // widget drawer
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            // Drawwer Header diisi dengan informasi akun
            UserAccountsDrawerHeader(
              accountName: const Text('Komang Mila Meitriani'),
              accountEmail: const Text("milameitriani21@gmail.com"),
              currentAccountPicture: GestureDetector(
                onTap: () {},
                child: const CircleAvatar(
                  // mengambil gamabar dari internet menggunakan NetworkImage
                  backgroundImage: NetworkImage(
                      'https://lh3.googleusercontent.com/a/ALm5wu2_kX2GP6Qp2aB0wDrgTWl1QwA-QSflC6HlgRRsHA=s432-p-rw-no'),
                ),
              ),
              // memberikan background pada Drawer Header
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/appimages/bgmila.jpg"),
                    fit: BoxFit.cover),
              ),
            ),
            // Menu Drawer
            const ListTile(
              title: Text('Notifications'),
              trailing: Icon(Icons.notifications_none),
            ),
            const ListTile(
              title: Text('Wishlist'),
              trailing: Icon(Icons.bookmark_border),
            ),
            const ListTile(
              title: Text('Akun'),
              trailing: Icon(Icons.verified_user),
            ),
            // Divider Menu
            const Divider(height: 2),
            const ListTile(
              title: Text('Setting'),
              trailing: Icon(Icons.settings),
            )
          ],
        ),
        // seluruh body dibungkus column
// tidak terdapat perubahan pada body pada body home.dart tugas ardi sebelumnya
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
            backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
            backgroundColor: Colors.pink,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
      body: ListView(
        children: <Widget>[
          Image.asset("assets/appimages/ikonmila.jpg"),
// setiap bagian body di pisahkan oleh container
          Container(
            color: Color.fromARGB(255, 101, 141, 206),
            padding: const EdgeInsets.all(15),
// untuk menampilkan secara horisontal maka menggunakan Row
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'YG ENTERTAIMENT',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Text(
                        'IKON',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
// setip bagian body di pisahkan oleh container
          Container(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(color: Theme.of(context).dividerColor)),
            ),
// untuk membuat tampilan secara horisontal maka digunkan row
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
// untuk membuat tampilan secara vertikal maka digunkan column
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.border_all_sharp, color: Colors.blue),
                    Container(
                      margin: const EdgeInsets.only(top: 8),
                      child: Text(
                        "Semua Kategori",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.auto_stories, color: Colors.blue),
                    Container(
                      margin: const EdgeInsets.only(top: 8),
                      child: Text(
                        "Album",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                ),

                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.auto_awesome, color: Colors.blue),
                    Container(
                      margin: const EdgeInsets.only(top: 8),
                      child: Text(
                        "Lighstick",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text(
              'Lake Oeschinen lies at foot of the bluemlisalp in bernese'
              'Alps. Situated 1,578 meters above sea level, it is one of the'
              'larger Alpine Lakes. A gondola ride from kandersteg, followed by a'
              'half-hour walk through pastures and pine forest, leads you to the'
              'lake, which warms to 20 degress Celsius in the summer.Activites'
              'enjoyed here include rowing, and riding the summer toboggan run.',
              softWrap: true,
            ),
          ),
        ],
      ),
    );
  }
}

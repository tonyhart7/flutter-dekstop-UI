part of 'pages.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

List<Widget> views = [
  const Center(
    child: Page1(),
  ),
  const Center(
    child: Page2(),
  ),
  const Center(
    child: Page3(),
  ),
];

int _selectedIndex = 0;

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          SideNavigationBar(
            selectedIndex: _selectedIndex,
            items: const [
              SideNavigationBarItem(
                icon: Icons.home,
                label: 'Report',
              ),
              SideNavigationBarItem(
                icon: Icons.people,
                label: 'User',
              ),
              SideNavigationBarItem(
                icon: Icons.settings,
                label: 'Settings',
              ),
            ],
            onTap: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
          ),
          Expanded(child: views.elementAt(_selectedIndex)),
        ],
      ),
    );
  }
}

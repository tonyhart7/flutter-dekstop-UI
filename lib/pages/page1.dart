part of 'pages.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              height: 0.4.sh,
              width: 0.35.sw,
              child: const AreaChartLite(),
            ),
            // ignore: sized_box_for_whitespace
            Container(
              height: 0.4.sh,
              width: 0.3.sw,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Mabar 3 idiot',
                    style: Get.textTheme.headline6,
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    child: ListTile(
                      leading: const Icon(Icons.people),
                      title: Text(
                        'Tony Hart',
                        style: Get.textTheme.subtitle1,
                      ),
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    child: ListTile(
                      leading: const Icon(Icons.people),
                      title: Text(
                        'Agus Sea',
                        style: Get.textTheme.subtitle1,
                      ),
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    child: ListTile(
                      leading: const Icon(Icons.people),
                      title: Text(
                        'Yudha Mus',
                        style: Get.textTheme.subtitle1,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              height: 0.4.sh,
              width: 0.35.sw,
              child: const LineChartLite(),
            ),
            SizedBox(
              height: 0.4.sh,
              width: 0.35.sw,
              child: const PieChartLite(),
            ),
          ],
        ),
      ],
    );
  }
}

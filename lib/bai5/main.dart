import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: HomeScreen()));

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Color selectedColor = Colors.grey; // Màu hiển thị mặc định

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Màn hình chính')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Màu đã chọn:', style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                color: selectedColor,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [BoxShadow(blurRadius: 10, color: Colors.black26)],
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton.icon(
              icon: Icon(Icons.color_lens),
              label: Text('Chọn màu ngay'),
              onPressed: () async {
                // Chờ kết quả trả về từ màn hình chọn màu
                final result = await Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PickColorScreen()),
                );

                // Cập nhật giao diện nếu người dùng có chọn màu
                if (result != null) {
                  setState(() {
                    selectedColor = result;
                  });
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}

class PickColorScreen extends StatelessWidget {
  final List<Map<String, dynamic>> colorList = [
    {'name': 'Đỏ rực rỡ', 'value': Colors.red},
    {'name': 'Xanh hy vọng', 'value': Colors.blue},
    {'name': 'Lục bảo', 'value': Colors.green},
    {'name': 'Vàng chanh', 'value': Colors.yellow},
    {'name': 'Tím mộng mơ', 'value': Colors.purple},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Chọn một màu')),
      body: ListView.builder(
        itemCount: colorList.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(backgroundColor: colorList[index]['value']),
            title: Text(colorList[index]['name']),
            onTap: () {
              // Lệnh quan trọng: Trả dữ liệu về và đóng màn hình
              Navigator.pop(context, colorList[index]['value']);
            },
          );
        },
      ),
    );
  }
}
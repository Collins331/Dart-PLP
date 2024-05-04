void main() async {
  print('Fetching data...');
  String data = await fetchData();
  print('Data fetched: $data');
}

fetchData() {
  return Future.delayed(Duration(seconds: 2), () {
    return 'Hello, World!';
  });
}
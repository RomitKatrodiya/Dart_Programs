Future<List<int>> server() {
  return Future<List<int>>.delayed(
      const Duration(seconds: 5), () => [1, 2, 3, 4, 5]);
}

void main() async {
  List data = [];

  print("\nCall server wait for respose...");

  data = await server();

  print("\n---------sent data sucsessfully---------");

  print("\nData is");
  for (int i = 0; i < data.length; i++) {
    print("=>  ${data[i]}");
  }

  print("\n-----------------------------------------");
}

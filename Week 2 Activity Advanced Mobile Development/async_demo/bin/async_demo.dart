// Generic class ApiResponse that holds a data field of type T
class ApiResponse<T> {
  final T data;
  
  ApiResponse(this.data);
  
  @override
  String toString() => 'ApiResponse(data: $data)';
}

// User class to represent user data
class User {
  final String name;
  final String email;
  
  User(this.name, this.email);
  
  @override
  String toString() => 'User(name: $name, email: $email)';
}

// Async function that returns Future<ApiResponse<User>> after a 3-second delay
Future<ApiResponse<User>> getUserData() async {
  // Simulate a 3-second delay
  await Future.delayed(Duration(seconds: 3));
  
  // Return a mock user data wrapped in ApiResponse
  return ApiResponse<User>(User('John Doe', 'john.doe@example.com'));
}

// Main function that uses await to get the result and print it
void main() async {
  print('Fetching user data...');
  final result = await getUserData();
  print('Result: $result');
}

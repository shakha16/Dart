import 'dart:io';

// Stream<int>? number(int num) {
//   for (var i = 0; i <= num; i++) {
//     print("Число $i");
//   }
// }

// a() {
//   print("Введите число");
//   int num = int.parse(stdin.readLineSync() ?? "0");
//   number(num);
// }

void main() {
  Employee employee = Employee(
    passport: '123456',
    name: 'John',
    surname: 'Doe',
    phoneNumber: '123-456-7890',
  );

  EmployeeModel employeeModel = EmployeeModel.fromEmployee(employee);

  Map<String, dynamic> employeeJson = employeeModel.toJson();

  print(employeeJson);
}

class Employee {
  String passport;
  String name;
  String surname;
  String phoneNumber;

  Employee(
      {required this.passport,
      required this.name,
      required this.surname,
      required this.phoneNumber});
}

class EmployeeModel extends Employee {
  EmployeeModel(
      {required passport,
      required name,
      required surname,
      required phoneNumber})
      : super(
            passport: passport,
            name: name,
            surname: surname,
            phoneNumber: phoneNumber);

  Map<String, dynamic> toJson() {
    return {
      'passport': passport,
      'name': name,
      'surname': surname,
      'phoneNumber': phoneNumber,
    };
  }

  factory EmployeeModel.fromEmployee(Employee employee) {
    return EmployeeModel(
      passport: employee.passport,
      name: employee.name,
      surname: employee.surname,
      phoneNumber: employee.phoneNumber,
    );
  }
}

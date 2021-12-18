class Employee {
  late int employeeId;
  late String firstName;
  late String lastName;
  late String birthDate;
  late int salaryPerMonth;
  late String position;

  Employee(
      {required this.employeeId,
      required this.firstName,
      required this.lastName,
      required this.birthDate,
      required this.salaryPerMonth,
      required this.position});

  Employee.fromJson(Map<String, dynamic> json) {
    employeeId = json['employeeId'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    birthDate = json['birthDate'];
    salaryPerMonth = json['salaryPerMonth'];
    position = json['position'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['employeeId'] = this.employeeId;
    data['firstName'] = this.firstName;
    data['lastName'] = this.lastName;
    data['birthDate'] = this.birthDate;
    data['salaryPerMonth'] = this.salaryPerMonth;
    data['position'] = this.position;
    return data;
  }
}

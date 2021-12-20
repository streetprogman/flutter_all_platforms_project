class Employee {
  late int? employeeId;
  late String firstName;
  late String lastName;
  late DateTime birthDate;
  late int salaryPerMonth;
  late String position;

  Employee(
      {this.employeeId,
      required this.firstName,
      required this.lastName,
      required this.birthDate,
      required this.salaryPerMonth,
      required this.position});

  Employee.fromJson(Map<String, dynamic> json) {
    employeeId = json['employeeId'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    birthDate = DateTime.parse(json['birthDate']);
    salaryPerMonth = json['salaryPerMonth'];
    position = json['position'];
  }

  Map<String, dynamic> toJson(bool add) {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if(!add)data['employeeId'] = this.employeeId;
    data['firstName'] = this.firstName;
    data['lastName'] = this.lastName;
    data['birthDate'] = this.birthDate.toString().substring(0,10)+"T00:00:00";
    data['salaryPerMonth'] = this.salaryPerMonth;
    data['position'] = this.position;
    return data;
  }
}

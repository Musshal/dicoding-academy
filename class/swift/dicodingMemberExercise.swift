import Foundation

func getInputString(msg: String) -> String{
	print(msg, terminator: " : ");
	return readLine() ?? ""
}

func getInputInt(msg: String) -> Int{
	return Int(getInputString(msg: msg)) ?? 0
}

protocol PersonProtocol{
	var firstName: String {set get}
	var lastName: String {set get}
	var address: String {set get}
	func fullName() -> String
}

class Person: PersonProtocol{
	var firstName: String
	var lastName: String
	var address: String
	init(firstName: String, lastName: String, address: String){
		self.firstName = firstName
		self.lastName = lastName
		self.address = address
	}

	func fullName() -> String{
		var parts: [String] = []
		parts += [firstName]
		parts += [lastName]
		return parts.joined(separator: " ")
	}
}

protocol StudentProtocol{
	var school: String {set get}
	func getInformation() -> String
}

class Student: Person, StudentProtocol{
	var school: String = ""

	func getInformation() -> String{
		return "Introduce myself, my name is \(fullName()), I'm student in \(school). \n Let study together!"
	}
}

print("Welcome to Swift Member Application!")
print("------------------------------------")

let firstName = getInputString(msg: "Input your first name")
let lastName = getInputString(msg: "Input your last name")
let address = getInputString(msg: "Input your address")
let school = getInputString(msg: "Input your school/college name")

let member = Student(firstName: firstName, lastName: lastName, address: address)
member.school = school

print("------------------------------------")
print(member.getInformation())

print("------------------------------------")
print("Thank you, see you again!")

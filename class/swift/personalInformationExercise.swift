import Foundation

print("Welcome to Swift Academy")
print("----------------------------------")

print("Enter your first name:"); let firstName = readLine()!
print("Enter your last name:"); let lastName = readLine()!
print("Enter your age:"); let age = readLine()!
print("Enter your job:"); let job = readLine()!
print("Enter your address:"); let address = readLine()!

let fullName = firstName + " " + lastName

print("Do you know \(fullName)?")
print("\(firstName) is a \(job)")
print("now, he is \(age) years old and live in \(address)")

print("----------------------------------")

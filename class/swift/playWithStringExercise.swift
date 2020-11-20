print("----------------------------------")

print("Input your first name:"); let firstName = String(readLine() ?? "")
print("Input your last name:"); let lastName = String(readLine() ?? "")
print("----------------------------------")
print("The following is operators used")

let concatenationString = firstName + lastName
print("String Concatenation Operator: \"\(concatenationString)\"")

var mutabilityString = ""
mutabilityString += firstName
mutabilityString += lastName
print("String Mutability Operator: \"\(mutabilityString)\"")

var comparisonString = ""
if firstName == lastName{
	comparisonString = String(false)
}
print("String Comparison Operator: \"\(comparisonString)\"")
print("----------------------------------")
print("The following is functions used")

let fullName = firstName + " " + lastName

let empty = firstName.isEmpty || lastName.isEmpty
print("isEmpty Function: \"\(empty)\"")

let startIndex = fullName[fullName.startIndex]
print("startIndex Function: \"\(startIndex)\"")

let index = fullName[fullName.index(after: fullName.startIndex)]
print("index Function: \"\(index)\"")

let customIndex = fullName[fullName.index(fullName.startIndex, offsetBy: 5)]
print("Fifth Index: \"\(customIndex)\"")

let endIndex = fullName[fullName.index(before: fullName.endIndex)]
print("endIndex Function: \"\(endIndex)\"")

var insert = fullName
insert.insert("!", at: insert.endIndex)
print("insert Function: \"\(insert)\"")

var remove = insert
remove.remove(at: remove.index(before: remove.endIndex))
print("remove Function: \"\(remove)\"")

var append = firstName
append.append(lastName)
print("append Function: \"\(append)\"")

let count = fullName.count
print("Length Function: \(count)")
print("----------------------------------")

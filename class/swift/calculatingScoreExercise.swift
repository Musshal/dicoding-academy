import Foundation

print("Welcome to Swift Academy!")
print("------------------------")
print("Input total score to calculated", terminator: ": "); let total = readLine() ?? ""
print("------------------------")

if let totalItem: Int = Int(total){
	var allValues = [Int]()
	for index in 1...totalItem{
		print("Input item to \(index)", terminator: ": "); let newItem = Int(readLine() ?? "") ?? 0
		allValues.append(newItem)
	}

	print("------------------------")
	var sum: Int = 0;

	for (_, value) in allValues.enumerated(){
		sum += value
	}

	let average = sum/totalItem
	var grade = ""

	switch average{
		case 0...40:
			grade = "E";
			break
		case 41...50:
			grade = "D";
			break
		case 51...60:
			grade = "C";
			break
		case 61...70:
			grade = "C+";
			break
		case 71...80:
			grade = "B";
			break
		case 81...90:
			grade = "B+";
			break
		case 91...100:
			grade = "A";
			break
		default:
			grade = "Invalid";
	}

	if grade != "Tidak valid"{
		print("You got Grade score \(grade) from \(total) score that available. \nYou got total score \(sum) with average \(average).")
	}
	else{
		print("Invalid score")
	}
}
else{
	print("Invalid input")
}

print("------------------------")

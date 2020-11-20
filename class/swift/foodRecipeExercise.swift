import Foundation

print("Welcome to Swift Academy!")
print("Let's make a food!")
print("--------------------------")
print("What do you want to make?"); let food = readLine() ?? ""
print("Input item amount to poured", terminator: ": "); let newItem = readLine() ?? "0"
print("--------------------------")

if let totalItem: Int = Int(newItem){
	var recipe = [String]()
	for index in 1...totalItem{
		print("Input item to \(index)", terminator: ": "); let newItem = String(readLine() ?? "")
		recipe.append(newItem)
	}

	print("---------------------------")
	print("How long cooking process?"); let time = readLine() ?? ""
	print("---------------------------")
	recipe.sort()
	print("You'll make \(food) during \(time) with recipe:")
	for (index, value) in recipe.enumerated(){
		print("\(index + 1). \(value)")
	}
}
else{
	print("Input invalid")
}
print("--------------------------")

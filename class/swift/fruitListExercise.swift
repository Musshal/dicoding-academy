import Foundation

var listFruits = [String]()
var isRunning = true

func getInput(msg: String) -> String?{
	print(msg, terminator: ": ");
	return readLine()
}

func getInputInt(msg: String) -> Int?{
	if let inputString = getInput(msg: msg){
		return Int(inputString)
	}
	else{
		return nil
	}
}

func showAllFruits(){
	if listFruits.isEmpty{
		print("No item in list")
	}
	else{
		for (index, value) in listFruits.enumerated(){
			print("[\(index + 1)] \(value)")
		}
	}
}

func insertFruit(){
	if let name = getInput(msg: "Input fruit name"){
		listFruits.append(name)
	}
	else{
		insertFruit()
		print("Input invalid")
	}
}

func editFruit(){
	showAllFruits()
	print("----------------------------------")
	if let position = getInputInt(msg: "Choose fruit position to change"){
		if position<=listFruits.count && position>0{
			if let name = getInput(msg: "Input fruit name"){
				listFruits[position-1] = name
			}
		}
		else{
			showMenu()
		}
	}
	else{
		editFruit()
		print("Input invalid")
	}
}

func deleteFruit(){
	showAllFruits()
	if let position = getInputInt(msg: "Choose fruit position to delete"){
		if position<=listFruits.count && position>0{
			listFruits.remove(at: position-1)
		}
		else{
			showMenu()
		}
	}
	else{
		deleteFruit()
		print("Input invalid")
	}
}

func showMenu(){
	print("Welcome to Swift Market")
	print("----------MENU---------")
	print("[1] Show all fruit")
	print("[2] Add fruit item")
	print("[3] Change fruit item")
	print("[4] Delete fruit item")
	print("[5] Exit")
	if let position = getInputInt(msg: "Please choose menu above"), position<=5 && position>0{
		print("----------------------------------")
		switch position{
			case 1:
				showAllFruits()
				break
			case 2:
				insertFruit()
				break
			case 3:
				editFruit()
				break
			case 4:
				deleteFruit()
				break
			case 5:
				isRunning = false
				print("Thank you, please come back!")
				break
			default:
				print("Your choice is wrong")
		}
	}
	else{
		print("Menu item invalid")
	}
	print("----------------------------------")
}

while isRunning{
	showMenu()
}

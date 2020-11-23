import Foundation

func getInput(msg: String) -> String? {
	print(msg, terminator: " : ");
	return readLine()
}

func getInputInt(msg: String) -> Int? {
	if let inputString = getInput(msg: msg){
		return Int(inputString)
	}
	else{
		return nil
	}
}

var speedTotal = 0

func makeIncrementer(forIncrement amount: Int) -> () -> Int {
	func incrementer() -> Int {
		speedTotal += amount
		return speedTotal
	}
	return incrementer
}

func makeDecrementer(forDecrement amount: Int) -> () -> Int {
	func decrementer() -> Int {
		speedTotal -= amount
		return speedTotal
	}
	return decrementer
}

let incrementByTen = makeIncrementer(forIncrement: 10)
let decrementByTen = makeDecrementer(forDecrement: 10)

func turnOnEngine(){
	print("Turn on the machine.........")
	print("Welcome to Swift Electric Moto")
	print("Brem brem brem brem")
}

func turnOffEngine(){
	print("Ciiiiiiiiitttttt......")
	print("Moto stopped")
}

func showSpeed(){
	print("Current speed: \(speedTotal)")
	print("Ngeeeeeengggggg")
}

func action(){
	print("------------------------------------")
	print("Let's act:")
	print("[1] Increasing speed")
	print("[2] Decreasing speed")
	print("[3] Turn off the machine")
	if let state = getInputInt(msg: "Input your act"){
		switch state{
			case 1:
				speedTotal = incrementByTen()
				showSpeed()
				action()
			case 2:
				if speedTotal > 0 {
					speedTotal = decrementByTen()
					showSpeed()
					action()
				}
				else{
					turnOffEngine()
					break
				}
			case 3:
				turnOffEngine()
				break
			default:
				break
		}
	}
	else{
		print("Invalid input")
	}
}
turnOnEngine()
action()

import Foundation

func getInput(msg: String) -> String?{
	print(msg, terminator: " : ");
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

enum HeavyMeal: Int, CaseIterable{
	case nasiGoreng = 1, mieInstan, magelangan, nasiKuning, kwetiau, nasiPutih
}

enum SideDish: Int, CaseIterable{
	case ikan = 1, telur, tempe, tahu, kerupuk
}

enum Drinks: Int, CaseIterable{
	case esTeh = 1, esJeruk, kopi, airPutih
}

func showAllHeavyMeal(){
	var position = 1
	print("Makan berat")
	for heavyMeal in HeavyMeal.allCases{
		print("[\(position)] \(heavyMeal)")
		position += 1
	}
}

func showAllSideDish(){
	var position = 1
	print("Lauk")
	for sideDish in SideDish.allCases{
		print("[\(position)] \(sideDish)")
		position += 1
	}
}

func showAllDrink(){
	var position = 1
	print("Minuman")
	for drink in Drinks.allCases{
		print("[\(position)] \(drink)")
		position += 1
	}
}

var total = 0
var item = ("","","")

func inputHeavyMeal(){
	if let position = getInputInt(msg: "Pilihlah makanan"){
		if let heavyMeal = HeavyMeal(rawValue: position){
			switch heavyMeal{
				case .mieInstan:
					total += 6000
					item.0 = "Mie Instan"
				case .kwetiau:
					total += 10000
					item.0 = "Kwetiau"
				case .magelangan:
					total += 7000
					item.0 = "Magelangan"
				case .nasiGoreng:
					total += 9000
					item.0 = "Nasi Goreng"
				case .nasiPutih:
					total += 3000
					item.0 = "Nasi Putih"
				case .nasiKuning:
					total += 5000
					item.0 = "Nasi Kuning"
			}
		}
		else{
			print("Posisi \(position) tidak ditemukan")
		}
	}
	else{
		print("Input tidak valid")
	}
}

func inputSideDish(){
	if let position = getInputInt(msg: "Pilihlah lauk"){
		if let sideDish = SideDish(rawValue: position){
			switch sideDish{
				case .ikan:
					total += 5000
					item.1 = "Ikan"
				case .kerupuk:
					total += 500
					item.1 = "Kerupuk"
				case .tahu:
					total += 1000
					item.1 = "Tahu"
				case .telur:
					total += 3000
					item.1 = "Telur"
				case .tempe:
					total += 1000
					item.1 = "Tempe"
			}
		}
		else{
			print("Posisi \(position) tidak ditemukan")
		}
	}
	else{
		print("Input tidak valid")
	}
}

func inputDrinks(){
	if let position = getInputInt(msg: "Pilihlah lauk"){
		if let drink = Drinks(rawValue: position){
			switch drink{
				case .airPutih:
					total += 0
					item.2 = "Air Putih"
				case .esJeruk:
					total += 2500
					item.2 = "Es Jeruk"
				case .esTeh:
					total += 2000
					item.2 = "Es Teh"
				case .kopi:
					total += 3000
					item.2 = "Kopi"
			}
		}
		else{
			print("Posisi \(position) tidak ditemukan")
		}
	}
	else{
		print("Input tidak valid")
	}
}

func menu(){
	print("Selamat datang di Rumah Makan Dicoding")
	print("--------------------------------------")
	showAllHeavyMeal()
	inputHeavyMeal()
	print("--------------------------------------")
	showAllSideDish()
	inputSideDish()
	print("--------------------------------------")
	showAllDrink()
	inputDrinks()
	print("--------------------------------------")
	print("Anda memilih \(item.0), \(item.1), dan \(item.2) dengan total harga Rp. \(total)")
	print("--------------------------------------")
	print("Terima kasih, selamat datang kembali!")
}

menu()

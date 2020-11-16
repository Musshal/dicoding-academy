import Foundation

print("Welcome to Swift Academy")
print("------------------------")

print("Input the width:"); let widthInput = readLine()
print("Input the height:"); let heightInput = readLine()
print("Input the length:"); let lengthInput = readLine()

if let length = Double(lengthInput ?? "0"), let height = Double(heightInput ?? "0"), let width = Double(widthInput ?? "0"){
  let volume = length*height*width
  let surfaceArea = 2 * ((width*length) + (width*height) + (height*length))
  let circumference = 4 * (width + length + height)
  
  print("------------------------")
  print("You have a cuboid with:")
  print("its width is \(width) cm")
  print("its height is \(height) cm")
  print("its length is \(length) cm")
  print("its volume is \(volume) cm3")
  print("its surface area is \(surfaceArea) cm")
  print("its circumference is \(circumference) cm")
  print("------------------------")
}
else{
  print("----------------------------------")
  print("Input tidak valid")
  print("----------------------------------")
}

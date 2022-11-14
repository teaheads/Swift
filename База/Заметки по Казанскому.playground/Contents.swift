// Вывести информацию хранимом типе данных переменной
let value = 0
type(of: value)

let str = "S"
type(of: str)

var char: Character = "S"
type(of: char)

// Сколько байтов занимает определенный тип данных в ОЗУ?

MemoryLayout<Int>.size
MemoryLayout<Float>.size
MemoryLayout<Double>.size
MemoryLayout<Character>.size
MemoryLayout<String>.size
MemoryLayout<Bool>.size

let integer = 1
let double = 1.1
let string = "1"
let character: Character = "1"
let booleanTrue: Bool = true
let booleanFalse: Bool = false

// Сколько байтов в ОЗУ занимают переменные/константы, что хранит в себе различные типы данных?

var checkMySize = MemoryLayout.size(ofValue: integer)
checkMySize = MemoryLayout.size(ofValue: double)
checkMySize = MemoryLayout.size(ofValue: string)
checkMySize = MemoryLayout.size(ofValue: character)
checkMySize = MemoryLayout.size(ofValue: booleanTrue)
checkMySize = MemoryLayout.size(ofValue: booleanFalse)

// Как пустить расчеты с числами с плаваюшей точкой по пизде

var myWallet: Double = 0
let incomeAfterOperation: Double = 0.1

myWallet += incomeAfterOperation
print(myWallet)
myWallet += incomeAfterOperation
print(myWallet)
myWallet += incomeAfterOperation
print(myWallet)

// Как не пустить расчеты с числами с плаваюшей точкой по пизде
// Decimal

import Foundation

var decimalWallet: Decimal = 0
let decimalIncome: Decimal = 0.1

decimalWallet += decimalIncome
print(decimalWallet)
decimalWallet += decimalIncome
print(decimalWallet)
decimalWallet += decimalIncome
print(decimalWallet)

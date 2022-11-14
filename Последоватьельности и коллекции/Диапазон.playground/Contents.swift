// Оператор полуоткрытого диапазона

// задаем тип данных явно
let someRangeInt: Range<Int> = 1..<10
type(of:someRangeInt)

// тип данных определен автоматически (неявно)
let anotherRangeInt = 51..<59
type(of:anotherRangeInt)

// диапазон с элементами типа String
let rangeString = "a"..<"z"
type(of:rangeString)

// диапазон с элементами типа Character
let rangeChar: Range<Character> = "a"..<"z"
type(of:rangeChar)

// диапазон с элементами типа Double
let rangeDouble = 1.0..<5.0
type(of:rangeDouble)

// можно использовать параметры (переменные и константы) которым эти значения инициализированы
let firstElement = 10
var lastElement = 18
let myBestRange = firstElement..<lastElement

// Префиксная форма оператора
let oneSideRange = ..<5
// PartialRangeUpTo - ЧастичныйДиапазонДо
type(of: oneSideRange)

/// Оператор закрытого диапазона
// Бинарная форма оператора
let fullRange = 1...10
type(of: fullRange)

// Постфиксная форма оператора
let infRange = 2...
// PartialRangeFrom - ЧастичныйДиагазонОт
type(of: infRange)

// Префиксная форма оператора
let myRange = ...0

/// Базовые свойства и методы

// определения количества элементов - свойство .count
let intR = 1...10
intR.count

// определения наличия элемента в диапазоне - метод .contains(_:)
intR.contains(7)

// пустой ли диапазон ? - свойство .isEmpty
intR.isEmpty

// верхнее значение диапазона - свойство .lowerBound
intR.lowerBound

// нижнее занчение диапазона  - свойство .upperBound
intR.upperBound

// нижнее занчение целых чисел диапазона  - метод .min()
intR.min()

// верхнее значение целых чисел диапазона - метод .max()
intR.max()

// Хешируемые диапазоны (Hashable)
// У обоих диапазонов, созданных с помощью различных операторов, но имеющих одни и те же пределы, идентичное значение хеша.

let range = 1...10
range.hashValue

let range2 = 1..<10
range2.hashValue

// Эквивалентные диапазоны (Equatable)
// Диапазоны, ограниченные с двух сторон, соответствуют протоколу Equatable, а значит, могут быть проверены на эквивалентность

let range3 = 1...10
let range4 = 1...10
range3 == range4

// Все типы диапазонов не сопоставимы, т.е не соответствуют требованиям протокола Comparable. Их нельзя сравнивать с помощью операторов <=, <, > и >=, это приведет к ошибке

[1, 2, 3, 4, 5]
["One", "Two", "Three", "Four", "Five"]
[1.1, 2.2]
[-1.1, -2.2]

// массивы с помощью литералов проинициализированы в alphabetArray и mutableArray. Неизменяемый массив alphabetArray предназначен для хранения значений типа String, а изменяемый массив mutableArray — для хранения элементов типа Int. Оба массива содержат по три элемента. Индексы соответствующих элементов обоих массивов имеют значения 0, 1 и 2.

let alphabetArray = ["a", "b", "c"]
var mutableArray = [2, 4, 8]

// создания массива с использованием функции Array(arrayLiteral:)
// создание массива с помощью передачи списка значений
Array(arrayLiteral: 1, 2, 3, 4, 5)

let newAlphabetArray = Array(arrayLiteral: "a", "b", "c")
newAlphabetArray

// Создание массива с помощью функции Array(_:)
// функцию Array(_:), которой в качестве входного аргумента необходимо передать произвольную последовательность (Sequence).
Array(1...5)

// создание и инициализирование массива константе результат работы функции Array(_:)
Array(0...9)

// создания массива с помощью функции Array(repeating:count:), возвращающей массив, который состоит из указанного количества одинаковых элементов.
Array(repeating: "Swift", count: 10)

// Доступ к элементам массива через индекс

var testIndex = Array(arrayLiteral: "One", "Two", "Three")
testIndex[0]
testIndex[1]
testIndex[2]

// доступ к элементам массива по индексу для изменения значений
testIndex[0] = "Seven"
testIndex

// доступ к элементам массива через оператор диапазона
testIndex[0...1] = ["Nothing else matter"]
testIndex

// Тип данных массива
// Тип данных массива основан на типе данных значений его элементов.

// Неявно, Array<String>.Type
let firstAr = Array(arrayLiteral: "a", "b", "c")
type(of:firstAr)

// Явно, Array<Int>.Type
let secondAr: [Int] = Array(1..<5)
type(of: secondAr)

// Еще примеры
let arrayOne: Array<Character> = ["a", "b", "c"]
type(of: arrayOne)

let arrayTwo: [Int] = [1, 2, 5, 8, 11]
type(of: arrayTwo)

// Массив — это value type
// При передаче исходного массива в новый параметр создается его полная копия. При изменении данной копии значение исходного массива остается прежним.
let parentArray = ["one", "two", "three"]
var copyParentArray = parentArray
copyParentArray[1] = "four"
parentArray
copyParentArray

// Массив может иметь пустое значение, то есть не иметь элементов (это словно строка без символов).

// В результате создаются два пустых массива emptyArray и anotherEmptyArray с уже инициализированными значениями (хотя и не содержащими элементов).

// объявляем массив с пустым значением с помощью переданного значения
let emptyArray: [String] = []

// объявляем массив с пустым значением с помощью специальной функции
let anotherEmptyArray = [String]()

// Операции с массивами
// Сравнение массивов

// три константы, которые cтанут элементами массива
let a1 = 1
let a2 = 2
let a3 = 3

var someArray = [1, 2, 3]
someArray == [a1, a2, a3]


// Слияние массивов
// создаем три массива
let charsOne = ["a", "b", "c"]
let charsTwo = ["d", "e", "f"]
let charsThree = ["g", "h", "i"]

// создаем новый слиянием двух
var alphabet = charsOne + charsTwo
// сливаем новый массив с третьим
alphabet += charsThree


// Многомерные массивы
// создаем массив массивов (вложенные массивы)
var arrayOfArrays = [[1,2,3], [4,5,6], [7,8,9]]

arrayOfArrays[0] // 1-ый вложенный массив
arrayOfArrays[1] // 2-ой вложенный массив
arrayOfArrays[2] // 3-ий вложенный массив

// Массив вложенный в массив - соответственно 2 индекса
// Получаем нужный нам элемент из вложенного массива в массив по индексу

arrayOfArrays[2][0]
arrayOfArrays[2][1]
arrayOfArrays[2][2]


// Базовые свойства и методы массивов

// Свойство count - возвращает количество элементов в массиве
var exampleArray = [1, 2, 3, 4, 5]
exampleArray.count

// Свойство isEmpty - проверка на пустоту массива
exampleArray.isEmpty

// Метод suffix(_:) - получить элемент из массива, отсчет идет с конца
exampleArray.suffix(1)

// Свойство first - возвращает первый элемент массива
exampleArray.first

// Свойство last - возвращает последний элемент массива
exampleArray.last

// Метод append(_:) - добавить новый элемент в конец массива
exampleArray.append(6)

// Метод insert(_:at:) - вставляет в массив новый одиночный элемент с указанным индексом
exampleArray.insert(7, at: 6)

// Метод remove(at:) - удалить требуемый элемент и вернуть  значение удаляемого элемента
exampleArray.remove(at: 6)
exampleArray

// Метод removeFirst() - удалить первый элемент
exampleArray
exampleArray.removeFirst()
exampleArray

// Метод removeLast() - удалить последний элемент
exampleArray
exampleArray.removeLast()
exampleArray

// Метод dropFirst(_:) - удаляем нужное колл-во элементов в начале на время выполнения функции
exampleArray
exampleArray.dropFirst(1)
exampleArray

// Метод dropLast(_:) - удаляем нужное колл-во элементов в конце на время выполнения функции
exampleArray
exampleArray.dropLast(1)
exampleArray

// Метод contains(_:) - определяет наличие необходимого элемента в массиве
exampleArray.contains(5)

// Метод min() - минимальное значение в массиве
exampleArray.min()

// Метод max() - минимальное знчение в массиве
exampleArray.max()

// Метод reverse() - изменить порядок следования всех элементов массива на противоположный
exampleArray
exampleArray.reverse()

// метод sorted() - сортирует значения по возрастанию и не изменяет исходный массив
var unsortedArray = [3, 2, 5, 22, 8, 1, 29]
unsortedArray.sorted()
unsortedArray


// метод sort() - сортирует значения по возрастанию и изменяет исходный массив
unsortedArray
unsortedArray.sort()
unsortedArray

// метод randomElement() - получить случайный элемент массива
exampleArray.randomElement()


// Срезы массивов (ArraySlice)
// Инициализируем массив константе одноименной функией
let arrayOfNumbers = Array(1...10)
type(of: arrayOfNumbers) // Array<Int>.Type - Массив
arrayOfNumbers[0] // Число 1 по индексу 0, все верно

// Инициализируем часть массива (подмассив) новой объявленной константе
let slice = arrayOfNumbers[4...6]
type(of: slice) // Array<Slice>.Type - Фрагмент массива
slice[4] // Число 5 по индексу 4, потому что это подмасси, он забрал индекс из основого массива


// Операции с ArraySlice

// Чтобы использовать свойства и методы массивов нужно преобразовать фрагмент массива в массив
type(of: slice)
let sliceToArray = Array(slice)
type(of: sliceToArray)

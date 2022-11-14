// Словарь dictionary содержит три элемента. Здесь 1, 2, 3 — это ключи, которые позволяют получить доступ к значениям, элементов словаря - "one", "two" и "three". Типом данных ключей <Int>, а типом данных значений элементов словаря, является <String>.

// При попытке создания словаря с двумя одинаковыми ключами Xcode сообщит об ошибке.

[1: "One", 2: "Two", 3: "Three"]

// Создание словаря с помощью Dictionary(dictionaryLiteral:)
// В качестве аргумента передается кортеж

Dictionary(dictionaryLiteral: (1, "One"), (2, "Two"))
Dictionary(dictionaryLiteral: (14, 88))

// Создание словаря с помощью Dictionary(uniqueKeysWithValues:)

// массив кортежей
let arrayOfTuples = [(2, 5), (3, 6), (1, 4)]
arrayOfTuples
type(of: arrayOfTuples)

// создание словаря c помощью функции Dictionary(uniqueKeysWithValues:), путем передачи ей в качестве аргумента константу содеражащую массив кортежей

let arrayOfTuplesOnDictionary = Dictionary(uniqueKeysWithValues: arrayOfTuples)
arrayOfTuplesOnDictionary

// Чтобы сформировать словарь на основе двух массивов нужно использовать функцию Dictionary(uniqueKeys WithValues:) и передать в нее функцию zip(_:_:) в которую в качестве аргументов будут переданы два массива

// массив имени звезд
let starNames = ["Proxima Centauri", "Alpha Centauri A",
"Alpha Centauri B"]

// массив расстояний до звезд
let starDistances = [4.24, 4.37, 4.37]

// Получение словаря, содержащего пары ключ-значений, где   названия звезд - ключ, а дистанции до них - значение из массива кортежей с помощью функции Dictionary(uniqueKeysWithValues:) и вложенной в неё функции zip(_:_:), в которую мы передаем в качестве аргументов константы, хронящие массивы

// функция zip(_:_:) - она берет значение каждой переданной в неё последовательности, объединяет их в кортеж и добавляет в результирующую последовательность.

let nameAndDistance = zip(starNames, starDistances)

// После этого сформированная последовательность передается как аргумент в uniqueKeysWithValues

let starsNameAndDistance = Dictionary(uniqueKeysWithValues: zip(starNames, starDistances))
starsNameAndDistance

// Тип данных словаря

// Неявно
let exampleDictionary = [404: "Error", 808: "Bass"]
type(of: exampleDictionary)

// Явно

// 1
let sumDictionary: Dictionary<Int, String> = [1: "You win!", 2: "You loose"]
type(of: sumDictionary)

// 2
let moreDictionary: [String:Int] = ["Angelina": 1986, "Ben": 1996]
type(of: moreDictionary)

// Взаимодействие с элементами словаря

var countryDict = ["RUS": "Россия", "BEL": "Белоруссия", "UKR": "Украина"]

// получаем значение значение по его ключу
countryDict["BEL"]

// доступ и запись значения элемента по ключу в переменную
var countryName = countryDict["BEL"]

// изменяем значение
countryDict["RUS"] = "Российская Федерация"
countryDict

// создать новый элемент в словаре
countryDict["TUR"] = "Turkey"
countryDict

// метод updateValue(_:forKey:) - изменение значения элемента словаря. При установке нового значения данный метод возвращает старое значение или nil, если значения по переданному ключу не существует.

// Меняем существующее значение
countryDict.updateValue("Russian Federation", forKey: "RUS")

// Меняем несуществующее значение
countryDict.updateValue("Estonia", forKey: "EST")

// Удаляем пару ключ-значение

// 1
countryDict["TUR"] = nil

// 2. метод removeValue(forKey:) - возвращается значение удаляемого элемента.

countryDict.removeValue(forKey: "UKR")

// Пустой словарь
let emptyDictionary: [String: String] = [:]

// С помощью функции Dictionary()
let anotherEmptyDictionary = Dictionary<Int, Int>()

// Сделать один словарь пустым с помощью присвоения значения другого пустого словаря
countryDict = emptyDictionary

// Сделать словарь пустым с помощью присвоения конструкции [:]

var birthYears = [1991: ["John", "Ann", "Vasiliy"], 1993: ["Alex", "Boris"]]
birthYears = [:]


// Базовые свойства и методы словарей

// Свойство count - возвращает количество элементов в словаре
exampleDictionary.count

// свойство isEmpty - если свойство count равно нулю, то isEmpty возвращает true
exampleDictionary.isEmpty

// свойства keys и values - получить все ключи или все значения словаря

exampleDictionary.keys
exampleDictionary.values

// keys и values - в константы
let exampleDicKeys = exampleDictionary.keys, exampleDicValues = exampleDictionary.values

type(of: exampleDicKeys)
type(of: exampleDicValues)

// При обращении к свойствам keys и values Swift возвращает не массив или множество, а значение специального типа данных что служат для доступа к ключам и значениям исходного словаря:

// Dictionary<Int,String>.Keys.Type
// Dictionary<Int,String>.Values.Type

// Они соответствуют требованиям протокола Collection т.е могут быть преобразованы в массив или во множество

type(of: exampleDicKeys)
type(of: exampleDicValues)

// Преобразовываем во множества
let exampleSetKey = Set(exampleDicKeys)
let exampleSetValue = Set(exampleDicValues)

type(of: exampleSetKey)
type(of: exampleSetValue)

// Преобразовываем в массивы
let exampleArrayKey = Array(exampleDicKeys)
let exampleArrayValue = Array(exampleDicValues)

type(of: exampleArrayKey)
type(of: exampleArrayValue)


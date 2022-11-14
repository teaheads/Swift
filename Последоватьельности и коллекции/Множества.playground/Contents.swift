// Set - Множества, Наборы

// Все доступные способы создания множеств:

// Объявить переменную, явно задать тип структуры данных Set и передать литерал множества с элементами String в качестве инициализируемого значения
var dishesTwo: Set = ["хлеб", "овощи", "тушенка", "вода"]

// Объявить переменную, явно задать тип данных Set<String>, где <String> указывает на тип значений элементов множества, и передать литерал множества в качестве инициализируемого значения.
var dishes: Set<String> = ["хлеб", "овощи", "тушенка", "вода"]

// Объявить переменную, и в качестве инициализируемого значения передать результат работы функции Set(arrayLiteral:)
var membersTwo = Set(arrayLiteral: "Энакин", "Оби Ван", "Йода")

// Объявить переменную, и в качестве инициализируемого значения передать результат работы функции Set<Int>(arrayLiteral:)
var members = Set<Int>(arrayLiteral: 1, 2, 3)

// Пустое множество
// создание пустого множества
let exampleSet: Set<String> = []

// создание пустого множества с помощью функции set()
let emptySet = Set<String>()

// Удаление значений в множестве путем инициализации пустого множенства

var setWithValues: Set<String> = ["хлеб", "овощи"]

// удаление всех элементов множества

setWithValues = []
setWithValues = Set()
setWithValues = exampleSet
setWithValues = emptySet

// Метод insert(_:) - создания нового элемента множества

// insert(_:) возвращается кортеж - (inserted true, memberAfterInsert "Jazz") где первый элемент содержит значение типа Bool, характеризующее успешность проведенной операции, а второй - добавляемый элемент. Если перывй элемент - true, то передаваемое значение в метод insert элемент успешно добавлено, если false — то передаваемое значение в метод insert уже существует во множестве.

// создаем пустое множество
var musicStyleSet: Set<String> = []
// добавляем к нему новый элемент
musicStyleSet.insert("Jazz")
musicStyleSet
type(of: musicStyleSet)

// метод remove() - удаления элемента из множества
// remove() уничтожает элемент с указанным значением и возвращает его значение или ключевое слово nil, если такого элемента не существует.

musicStyleSet = ["Jazz", "Hip-Hop", "Rock"]
musicStyleSet.remove("Hip-Hop")
musicStyleSet
let saveRemove = musicStyleSet.remove("Rock")
musicStyleSet
saveRemove
musicStyleSet.remove("Classic")

// метод removeAll() - удаление всех элементов из множества
musicStyleSet.removeAll()

// метод contains(_:) - Проверка наличия значения во множестве, в зависимости от результата проверки  возвращает значение типа Bool

musicStyleSet = ["Jazz", "Hip-Hop", "Rock"]
musicStyleSet.contains("Jazz")
musicStyleSet.contains("Death_metal")

// свойство count - определения количества элементов во множестве

musicStyleSet.count

// Операции со множествами

// множество с нечетными цифрами
let a: Set = [1, 3, 5, 7, 9]
// множество с четными цифрами
let b: Set = [0, 2, 4, 6, 8]
// множество со смешанными цифрами
let c: Set = [3, 4, 7, 8]

// Для каждой пары множеств можно произвести следующие операции:

// 1. Метод (intersection(_:)) - получить все общие элементы для двух множеств.
c.intersection(a)
c.intersection(b)

// 2. Метод (symmetricDifference(_:)) - получить все непересекающиеся элементы двух множеств.
c.symmetricDifference(a)
c.symmetricDifference(b)

// 3. Метод (union(_:)) - получить все элементы обоих множеств
a.union(b)

// 4. Метод (subtracting(_:)) - получить разницу элементов, то есть элементы, которые входят в первое множество, но не входят во второе
a.subtracting(b)
b.subtracting(a)

// Отношения множеств

// Пересекающиеся множества
// Непересекающиеся множнства
// Надмножество
// Подмножество

let aSet: Set = [1, 2, 3, 4, 5] // Надмножество над Bset, пересекается с cSet
let bSet: Set = [1, 3] // Подмножество aSet, не пересекается с cSet
let cSet: Set = [5, 6, 7, 8] // Множество, не пересекается с aSet, но пересекается с bSet

// Два множества считаются эквивалентными, если у них один и тот же комплект элементов. Эквивалентность множеств проверяется с помощью оператора эквивалентности (==)

aSet == bSet
aSet == aSet

// Метод isSubset(of:) - определяет, является ли одно множество подмножеством другого

bSet.isSubset(of: aSet)

aSet.isSubset(of: bSet)

// Метод isSuperset(of:) - определяет, является ли множество надмножеством для другого

aSet.isSuperset(of: bSet)

bSet.isSuperset(of: aSet)

// Метод isDisjoint(with:) - определяет, существуют ли в двух множествах общие элементы, и в случае их отсутствия возвращает true

aSet.isDisjoint(with: bSet)

// Метод isStrictSubset(of:) - определяет, является ли подмножество не равным указанному множеству

bSet.isStrictSubset(of: aSet)

// Метод isStrictSuperset(of:) - определяет, является ли надмножеством не равным указанному множеству

aSet.isStrictSuperset(of: bSet)

// Метод sorted() - множество будет отсортированно, но  в результатье работы будет возвращен массив где значения будут идти по возврастанию

let setOfNums: Set = [1,10,2,5,12,23]
type(of: setOfNums)
let sortedArray = setOfNums.sorted()
type(of: sortedArray)

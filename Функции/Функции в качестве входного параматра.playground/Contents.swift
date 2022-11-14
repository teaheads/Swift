// функия в качестве входного параметра в другую функцию

func returnMessage(code: Int, message: String) -> String {
    var mutableMessage = message
    mutableMessage += String(code)
    return mutableMessage
}
returnMessage(code: 404, message: "Error ")

print(returnMessage(code: 404, message: "Fatal error "))



/// Входной параметр с вариативным числом значений

// У одной функции может быть только один вариативный параметр, и он должен находиться в самом конце списка входных параметров.

// Вариативный параметр обозначается в списке входящих параметров с указанием оператора диапазона ... сразу после типа. Значения аргумента при вызове функции задаются через запятую.

// Параметр codes может содержать произвольное количество значений указанного типа. Внутри функции он трактуется как последовательность (Sequence), поэтому его можно обработать с помощью конструкции for-in.

func printRequestString (codes: Int...) -> Void {
    var codesString = ""
    for oneCode in codes {
        codesString += String(oneCode) + " "
    }
    print("Получены ответы - \(codesString)")
}
printRequestString(codes: 600, 800, 301)


/// Функция может возвращать значения любого типа данных

// кортежи могут быть использованы для этого, так как с их помощью можно с легкостью вернуть сразу несколько значений

// В качестве типа возвращаемого значения функции getCodeDescription(code:) указан тип кортежа и имена его элементов

func getCodeDescription (code: Int) -> (code: Int, description: String) {
    let description: String
    switch code {
    case 1...10:
        description = "Error"
    case 101...200:
        description = "Correct"
    default:
        description = "Unknow"
    }
    return (code, description)
}
getCodeDescription(code: 111)

// Полученное в ходе работы getCodeDescription(code:) значение записывается в константу request, у которой появляются свойства description и code, что со- ответствует именам элементов возвращаемого кортежа.

let request = getCodeDescription(code: 404)
request.description
request.code


/// Значение по умолчанию для входного параметра

// если вы передали значение входного параметра, то оно будет ис- пользовано в теле функции
// если вы не передали значение параметра, для него будет использовано значение по умолчанию. Значение по умолчанию указывается при объявлении функции в списке входных параметров для каждого параметра отдельно.

// Доработаем объявленную ранее функцию returnMessage(code:message:) таким образом, чтобы была возможность не передавать значение параметра message. Для этого укажем значение по умолчанию.

func valueDefault (code: Int, message: String = "Код - ") -> String {
    var mutableMessage = message
    mutableMessage += String(code)
    return mutableMessage
}

// при вызове returnMessage(code:message:) не передается значение для параметра message. Это стало возможным благодаря установке значения по умолчанию "Код - " в списке входных параметров.

valueDefault(code: 404)

/// Функциональный тип

// Простой функциональный тип

// В левой части функционального типа указываются типы входных параметров, в правой — тип выходного значения.// В левой части функционального типа указываются типы входных параметров, в правой — тип выходного значения.

// Если функция ничего не принимает и не возвращает, то ее тип указывается круглой скобкой и ключевым словом Void после стрелки: () -> Void

// В первых скобках функционального типа всегда описываются типы данных входных параметров, а после стрелки указывается тип данных выходного значения

func printErrorMessage () {
    print("Произошла ошибка")
}

// Если функция принимает на вход массив цело- численных значений, а возвращает опциональное строковое значение, то ее тип данных будет выглядеть следующим образом: ([Int]) -> String?



// Сложный функциональный тип

// Функция A, возвращающая функцию B, которая ничего не возвращает, будет иметь следующий функциональный тип: () -> () -> Void

// функция A: () -> Void
func printText () {
    print("Функция вызвана")
}
// функция B, которая возвращает функцию A: () -> () -> Void
func returnPrintTextFunction () -> () -> Void {
    return printText
}
returnPrintTextFunction()

// функция принимает на вход значение типа Int и возвращает функцию, которая принимает на вход значение типа String и возвращает значение типа Bool. Тип функции будет:
// func exampleB(_: Int) -> (String) -> (Bool)

// Каждый блок, описывающий типы данных входных параметров, заключается в круглые скобки. Таким образом можно определить, где начинается функциональный тип очередной функции.

func exampleA (_: String) -> Bool {
    return true
}

func exampleB (_: Int) -> (String) -> (Bool) {
    return exampleA
}
exampleB(1)

//

func exTwo (exTwo: Int) -> Int {
    exTwo * 2
}

func exFour (exFour: Int) -> Int {
    exFour * 4
}



/// Входное значение функционального типа
// Как уже говорилось, функции могут выступать в качестве входных параметров

// Напишем функцию generateWallet(walletLength:), случайным образом гене- рирующую массив банкнот, каждая из которых представлена целым числом раз- решенного номинала. Функция должна принимать на вход требуемое количество банкнот в кошельке.

func generateWallet(walletLength: Int) -> [Int] {
 // существующие типы банкнот
     let typesOfBanknotes = [50, 100, 500, 1000, 5000]
    // массив банкнот
    var wallet: [Int] = []
    // цикл генерации массива случайных банкнот
    for _ in 1...walletLength {
        wallet.append( typesOfBanknotes.randomElement()! )
    }
    return wallet
}
generateWallet(walletLength: 50)

// Также реализуем функцию с именем sumWallet, которая может принять на вход generateWallet(walletLength:), после чего вычисляет и возвращает сумму всех банкнот в кошельке

// функция подсчета денег в кошельке
func sumWallet(
    banknotesFunction wallet: (Int) -> [Int],
    walletLength: Int
) -> Int? {
    // вызов переданной функции
    let myWalletArray = wallet( walletLength )
    var sum: Int = 0
    for oneBanknote in myWalletArray {
        sum += oneBanknote
    }
    return sum
}
sumWallet(banknotesFunction: generateWallet(walletLength:), walletLength: 20)



/// Возможности функций
// Функции могут входить в состав друг друга, то есть они могут быть вложенными. Вложенные функции обладают ограниченной областью видимости, то есть на- прямую доступны только в теле родительской функции.
// inout - сквозной параметр, позволяющий изменять входной параметр в теле функции с сохранением результата после её работы
func oneStep(coordinates: inout (Int, Int), stepType: String) -> Void {
    func up( coords: inout (Int, Int)) {
        coords = (coords.0+1, coords.1)
    }
    func right( coords: inout (Int, Int)) {
        coords = (coords.0, coords.1+1)
    }
    func down( coords: inout (Int, Int)) {
        coords = (coords.0-1, coords.1)
    }
    func left( coords: inout (Int, Int)) {
        coords = (coords.0, coords.1-1)
    }
    switch stepType {
    case "up":
        up(coords: &coordinates)
    case "right":
        right(coords: &coordinates)
    case "down":
        down(coords: &coordinates)
    case "left":
        left(coords: &coordinates)
    default:
        break
    }
}
var coordinates = (5, -5)
// передаем в функцию переменную в качестве аргумента
oneStep(coordinates: &coordinates, stepType: "up")
// благодаря сквозным параметрам результат работы функции был сохранен в передаваемую переменную кортежа
coordinates



// Перегрузка функций

// Swift позволяет перегружать функции (overloading), то есть в одной и той же области видимости создавать функции с одинаковыми именами. Различия функ- ций должны заключаться в их функциональных типах (входных и выходных параметрах).

// 1
func say(what: String) -> Void {}
func say(what: Int) -> Void {}

// 2
func cry() -> String {
    return "one"
}

func cry() -> Int {
return 1
}

// let resultOfFunc = say() // ошибка

// Чтобы корректно передать нужную функцию в переменную нужно явно указать тип данных переменной чтобы он совпадал с типом данных возвращаемой функцией
let resultString: String = cry()
let resultInt: Int = cry()



// Рекурсивный вызов функций
// Функция может вызывать саму себя. Этот механизм называется рекурсией.
// Как только функция вызывается и принимает аргумент она вызывает print(), потом вызывает сама себя еще раз с заранее заданным аргументом в теле констукции if, а во время начала 3-ей итерации if возвращает false и происходит выход

func countdown(firstNum num: Int) -> Void {
    print(num)
    if num > 0 {
        // рекурсивный вызов функции
        countdown(firstNum: -1)
    }
}
countdown(firstNum: 1)

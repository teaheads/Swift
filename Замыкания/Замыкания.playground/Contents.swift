// Замыкания (Клоужеры) - это функции без имен которые мы можем передавать  как параметры в другие функции

// СИНТАКСИС
/*

{ (парметры) -> возвращаемое_значение in
 
 тело замыкания, выражение
 
}
 
*/

// Если параметры отсутствуют, т.е замыкание ничего не принимает то in может быть опущен
let driving = {
    print("I'm driving in my car")
}

driving()

// 2
let driving2 = { (place: String) in
    print("I'm going to \(place) in my car")
}
driving2("London")

// Синтаксис функции
func pay(user: String, amount: Int) {
    // code
}

// Синтаксис замыкания
let payment = {(user: String, amount: Int) in // in обозначает начало тела замыкания
    // code
}

// Замыкание возвращающее значение
let drivingWithReturn = {(place: String) -> String in
    return "I'm going to \(place) in my car"
}

let mesage = drivingWithReturn("London")
print(mesage)

// замыкание что принимает на вход но ничего не возвращает
let payment2 = {(user: String) in
    print("Paying \(user)...")
}

// замыкание что принимает 1 параметр и возвращает 1 параметр
let payment3 = {(user: String) -> Bool in
    print("Paying \(user)...")
    return true
}

// вернуть значение без принятия на вход
// () проигнорировать данные скобки невозможно

let payment4 = {() -> Bool in
    return true
}

// используем замыкание в параметрах функции, в теле функции и при её вызове

// Закмыкание которое мы будем использовать в качестве аргумента

/*
let driving = {
    print("I'm driving in my car")
}
*/

// у функции travel тип данных параметра (action: () -> Void) под наше замыкание, которое ничего не возвращает и не принимает.

// Нужно для того, чтобы при вызове функции travel передать в качестве аргумента наше замыкание driving
 
func travel(action: () -> Void) {
    print("I'm getting ready to go")
    action()
    print("I'm arrived!")
}

travel(action: driving)

/*
 1. Вызов функции
 1.1 В качестве параметра функции выступает замыкание, в него передается другое замыкание driving в качестве аргумента
 
 2.1 Отрабатывает print("I'm getting ready to go")
 2.2 Отрабатывает замыкание action() что было в параметре и в теле функции: в него был передан аргумент замыкание driving с print("I'm driving in my car")
 2.3 Отрабатывает print("I'm arrived!")
*/



// Если последним параметром в функции идет замыкание то мы можем использовать trading clojure
// trading clojure позволяет использовать замыкание после функции

// trading clojure: функция, а после - замыкание

// 1
travel {
    print("I'm driving in my car")
}

/*
 1. Вызов функции
 1.1 В качестве параметра выступает замыкание, в него передается print("I'm driving in my car") в качестве аргумента
*/


// 2
func animate(duration: Double, animations: () -> Void) {
    print("Starting a \(duration) second animation")
    animations()
}
animate(duration: 3) {
    print("Image")
}

/*
 1. Вызов функции
 1.1 В качестве параметов функции выступает константа duration и замыкание animations
 1.1 В параметр duration передается аргумент 3, в парматер-замыкание передается print("Image")
 
 2.1 Отрабатывает print("Starting a \(duration) second animation") с переданным в duration аргументом 3
 2.2 Отрабатывает замыкание animations() с переданным в него print("Image")

*/




// Замыкание является параметром функции и принимает параметр, но ничего не возвращает

func traveling (action: (String) -> Void) {
    print("I'm getting ready to go")
    action("London")
    print("I'm arrived!")
}
// указываем параметры для паметра-замыкания функции action
traveling {(place: String) in
    print("I'm going to \(place) in my car")
}


/*
 1. Вызов функции traveling
 2. В качестве параметра функции используется замыкание action
 3. Вызов замыкания action
 4. Указываем параметр замыкания action - place и тип данных - String, в теле замыкания - print("I'm going to \(place) in my car")
 
 5.1 Отрабатывает print("I'm getting ready to go")
 5.2 Отрабатывает параметр-замыкание action: в его параметр place попадает строка "London", которая потом оказывается в его теле, с помощью интеполяции в функции print("I'm going to \(place) in my car")
 5.3 Отрабатывает print("I'm arrived!")
 */



/// Отработка

let sum = {(x: Int, y: Int) -> Int in
    x + y
}

func operation (a: Int, b: Int, action: (Int, Int) -> Int) {
    action(a, b)
}
// передача в параметр-замыкания другого замыкания как аргумент
operation(a: 10, b: 20, action: sum)


/// функция operation
// функция operation имеет парматеры a: Int, b: Int и параетр-замыкание action с пармаетрами Int, Int возвращающая int
// в теле функции замыкание action принимает параметры функции operation a: Int, b: Int

/// Вызов функции operation
// при вызове функции operation в её параметры a: Int, b: Int передается в качестве аругментов 10 и 20
// в пармает-замыкание action передается замыкание sum

/// Тело функции
// аргументы 10 и 20 переданные в пармаметры a и b попадают в параметр-замыкание action
// из параметра-замыкания action они попадают в параметры x и y замыкания sum
// в теле замыкания sum происходит их сложение
// замыкание sum возвращает результат сложения аргументов - 30



// синтаксис последущего замыкания
operation(a: 20, b: 20) { x, y in
    x * y
}

/// функция operation
// функция operation имеет параметы a: Int, b: Int, action: (Int, Int) -> Int
// в теле функции замыкание action принимает в себя пармаеты функции a: Int, b: Int

/// вызов функции operation
// передаются 2 аргумента: в параметр a: 20 и в параметр b: 20
// поскольку замыкание action находится в конце параматеров функции используем синтаксис последущего замыкания

/// синтаксис последущего замыкания
// в фигурных скобках указываем параметры замыкания action: x, y
// в теле замыкания action его параметры умножаются один на другой

/// ход выполнения
// из параметров функции a и b аргументы 20 и 20 попадают в тело функции
// в теле функции они попадают в замыкание action
// из замыкания action они попадают в его параметры x и y
// в теле замыкания параметры x и y умножаются друг на друга
// замыкание action возвращает 400




// Создать 2 замыкания (Double, Double) -> Double, одно вычисляет периметр, другое - площадь.
// Создать фунцию которая принимает в себя прямоугольник (ширину и высоту) и вернет Double
// Вызвать функцию с замыканиями поочердедно

let area = {(a: Double, b: Double) -> Double in
    a * b
}

let perimeter = {(a:Double, b: Double) -> Double in
    a * 2 + b * 2
}

func rectangle (lenght: Double, width: Double, clojure: (Double,Double) -> Double) -> Double {
    clojure(lenght, width)
}

rectangle(lenght: 10, width: 5, clojure: area)
rectangle(lenght: 10, width: 5, clojure: perimeter)

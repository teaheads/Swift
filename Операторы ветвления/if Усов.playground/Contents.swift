let logicVar = false
// полная форма проверки на отрицание
if logicVar == false {
    print("Переменная logicVar ложна")
}
// сокращенная форма проверки на отрицание
if !logicVar {
    print("Переменная logicVar вновь ложна")
}



// Стандартный синтаксис оператора if

// переменные типа Bool
var firstLogicVar = true
var secondLogicVar = false

// проверка значения переменных
if firstLogicVar || secondLogicVar {
    print("Одна или две переменные истинны")
} else {
    print("Обе переменные ложны")
}

// Так как проверяемое выражение возвращает true, если хотя бы один из операндов равен true, то в данном примере будет выполнен первый блок кода.
// В приведенном выше примере есть один недостаток: невозможно отличить, когда одна, а когда две переменные имеют значение true. Для решения этой проблемы можно вкладывать операторы условия друг в друга.

if firstLogicVar || secondLogicVar {
    if firstLogicVar && secondLogicVar {
        print("Обе переменные истинны")
    } else {
        print("Только одна из переменных истинна")
    }
} else {
    print("Обе переменные ложны")
}

// Внутри тела первого оператора условия используется дополнительная конструк- ция if-else.
// Стоит отметить, что наиболее однозначные результаты лучше проверять в пер- вую очередь. По этой причине выражение firstLogicVar && secondLogicVar стоит вынести в первый оператор, так как оно вернет true, только если обе переменные имеют значение true. При этом вложенный оператор с выраже- нием firstLogicVar || secondLogicVar потребуется перенести в блок else.

if firstLogicVar && secondLogicVar {
    print("Обе переменные истинны")
} else {
    if firstLogicVar || secondLogicVar {
        print("Только одна из переменных истинна")
    } else {
        print("Обе переменные ложны")
    }
}

// Конструкции if-else могут вкладываться друг в друга без каких-либо ограниче- ний, но помните, что такие «башенные» конструкции могут плохо сказываться на читабельности вашего кода.



// Расширенный синтаксис оператора if

// проверка значения переменных
if firstLogicVar && secondLogicVar {
    print("Обе переменные истинны")
} else if firstLogicVar || secondLogicVar {
    print("Одна из переменных истинна")
} else {
    print("Обе переменные ложны")
}

// Задача

// количество жильцов в доме
var tenantCount = 6

// стоимость аренды на человека
var rentPrice = 0

/* определение цены на одного
человека в соответствии с условием */

if tenantCount < 5 {
    rentPrice = 1000
} else if tenantCount >= 5 && tenantCount <= 7 {
   rentPrice = 800
} else {
   rentPrice = 500
}

// вычисление общей суммы средств
var allPrice = rentPrice * tenantCount // 4800



// Кстати, данный алгоритм может быть реализован с использованием операторов диапазона и метода contains(_:), позволяющего определить, попадает ли значение в требуемый диапазон

if (..<5).contains(tenantCount) {
    rentPrice = 1000
} else if (5...7).contains(tenantCount) {
     rentPrice = 800
} else if (8...).contains(tenantCount) {
    rentPrice = 500
}

allPrice = rentPrice * tenantCount // 4800



// Тернарный оператор условия

// 1
1 < 2 ? print("1 < 2") : print("1 > 2")
// Консоль: 1 < 2

// 2
var x = 1, y = 2, z = 0

z = (x < y ? 10 : 20)
// z = 10

// 3
var height = 180, isHeader = true

let rowHeight = height + (isHeader ? 20 : 10 )
// rowHeight = 200

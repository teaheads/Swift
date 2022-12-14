// ПРИМЕЧАНИЕ Объявляя структуру, вы определяете новый тип данных.

/*
struct ИмяСтруктуры {
    // свойства и методы структуры
}
*/

struct ChesPlayer {
}

let playerOleg: ChesPlayer
type(of: playerOleg)



// Свойства в структурах
// Объявление свойств

// Созданная структура ChessPlayer пуста — она не описывает ни одной характеристики игрока. Для повышения информативности и ценности структуры в нее могут быть добавлены свойства (подобно тем, что встречались нам при изучении перечислений).

/*
 struct ИмяСтруктуры {
        var свойство1: ТипДанных
        let свойство2: ТипДанных
        // остальные свойства и методы
 }
 */

// свойство: Any — свойство структуры, может быть произвольного типа данных
// Свойство может быть представлено как в виде переменной, так и в виде константы. Количество свойств в структуре не ограничено.

struct Player {
    var name: String
    var victories: UInt
}



// Встроенный инициализатор

// Структуры, так же как и перечисления, имеют встроенный инициализатор (метод с именем init), который не требуется объявлять.

// Данный инициализатор принимает на входе значения всех свойств структуры, производит их инициализацию и возвращает экземпляр данной структуры

// В результате будет создан новый экземпляр структуры ChessPlayer - playerHarry, содержащий свойства с определенными в инициализаторе значениями.

let playerHarry = Player.init(name: "Гарри", victories: 32)

// При создании экземпляра структуры всем свойствам обязательно должны быть инициализированы значения. Пропустить любое из них недопустимо! Если значение какого-либо из свойств не будет указано, Xcode сообщит об ошибке.

// Имя инициализатора (init) может быть опущено. Точно такой же подход вы видели при создании значений любых фундаментальных типов.

var harry = Player(name: "Гарри", victories: 32)



// Значения свойств по умолчанию

// Для свойств могут быть заданы значения по умолчанию.

// При этом такие свойства могут быть опущены при создании нового значения данного типа (Swift автоматически создает новый инициализатор)

// Значения по умолчанию указываются при объявлении свойств точно так же, как вы указываете значение любой переменной или константы. При этом вы можете указывать или не указывать значения по умолчанию для каждого свойства в отдельности.

struct CChessPlayer {
    var name: String
    var victories: UInt = 0
}

var player = CChessPlayer(name: "Oleg")

// Показан пример создания параметров типа PlayerInChess с передачей значения свойств и без нее (через пустой инициализатор)

struct ChessPlayer {
    var name: String = "Player"
    var victories: UInt = 0
}

// передаем значения для обоих свойств
var playerJhon = ChessPlayer(name: "Jhon", victories: 32)

// используем значения по умолчанию с помощью пустого инициализатора
var uncnowPlayer = ChessPlayer()



// Структура как пространство имен

// Структура образует отдельное пространство имен, поэтому для доступа к элементам этого пространства имен необходимо в первую очередь получить доступ к самому пространству.

// В предыдущем примере была создана структура ChessPlayer с двумя свойствами, для доступа к которым необходимо указать имя параметра и через точку (.) имя свойства.
// Таким образом, вы сперва получаете доступ к структуре (пространству имен), а затем к самому свойству.

playerJhon.name
uncnowPlayer.name

// Данный способ доступа обеспечивает не только чтение, но и изменение значения свойства экземпляра структуры

playerJhon.victories
playerJhon.victories += 1
playerJhon.victories

// Если свойство структуры или ее экземпляр указаны как константа (let), при попытке изменения значения свойства Xcode сообщит об ошибке.



// Собственные инициализаторы

// инициализатор — это специальный метод, который носит имя init.
// Если вас не устраивают инициализаторы, которые создаются для структур автоматически, вы можете определить собственные.

// ПРИМЕЧАНИЕ Автоматически созданные встроенные инициализаторы удаляются при объявлении первого собственного инициализатора.



// Доступ к свойствам структуры внутри инициализатора структуры осуществляется с помощью оператора self.

// Это связано с тем, что параметр функции имеет то же самое имя (name), что и свойства структуры.

// В случае, если бы параметр функции и свойства структуры имели различные имена, то использование ключевого self не являлось бы обязательным.

// Создадим инициализатор для структуры ChessPlay, который принимает значение только для свойства name

struct ChessPlay {
    var name: String = "Игрок"
    var victories: UInt = 0
    
     init(name: String){
        self.name = name
    }
}
// при создание экземпляра структуры в инициализатор в качестве аргумента во входной параметр name попадает строка "Ольга"

// в теле инициализатора она присваивается свойству структуры name

// Из-за того что в свойстве структуры используется имя name и во входном параметре и теле метода-инициализатора используется имя name в теле инициализатора не получается присвоить полученный аргумент в виде стоки свойству с таким же именем в момент инициализации входного значения

// для этого используется оператор self позволяющий разграничить входной параметр инициализатора и свойство структуры

// создадим экземпляр структуры, инициализируем свойству name новое значение "Ольга"
var playerHelgaPotaki = ChessPlayer(name: "Ольга")

// аргумент "Ольга" попадает во входной параметр name, далее в тело инициализатора где в качестве значения присваивается свойству self.name

playerHelgaPotaki.name


// разные имена свойства структуры и входного параметра инициализатора, оператор self не нужен
struct ChessPlaying {
    var naming: String = "Player"
    var victories: UInt = 0
    
    init(name: String) {
        naming = name
    }
}

var playerHelga = ChessPlaying(name: "Helga")


/*
 // следующий код вызовет ошибку
 // структура больше не имеет встроенных инициализаторов
 var newPlayer = ChessPlay()
 */

// Помните, что создавать собственные инициализаторы для структур не обязательно, так как они уже имеют встроенные инициализаторы.

// Структуры — это типы-значения (Value type). При передаче экземпляра структуры от одного параметра в другой происходит его копирование. В следующем примере создаются два независимых экземпляра одной и той же структуры:

var olegMuhin = ChessPlayer(name: "Олег Мухин")
olegMuhin.name

var olegLapin = olegMuhin
olegLapin.name = "Олег Лаптин"

olegLapin.name
olegMuhin.name



// Методы в структурах

// Объявление методов

// Помимо свойств, структуры, как и перечисления, могут содержать методы. Синтаксис объявления методов в структурах аналогичен объявлению методов в пере- числениях. Они, как и обычные функции, могут принимать входные параметры.

// Реализуем метод description(), который выводит справочную информацию об игроке в шахматы на консоль

struct ChessPlayers {
    var name: String = "Player"
    var victories: UInt = 0
    
    init(name: String) {
        self.name = name
    }
    
    func description() -> Void {
        print("Игрок \(name) имеет \(victories) побед")
    }
}

var andrei = ChessPlayers(name: "Andrei")
andrei.description()



// Изменяющие методы

// По умолчанию методы структур, кроме инициализаторов, не могут изменять значения свойств, объявленные в тех же самых структурах.

// Для того чтобы обойти данное ограничение, перед именем метода необходимо указать модификатор mutating.

// Создадим метод addVictories(count:), который будет изменять значение свойства victories

struct PlayingChess {
    var name: String = "Player"
    var victories: UInt = 0
    
    init(name: String) {
        self.name = name
    }
    
    func description() -> Void {
        print("Игрок \(name) имеет \(victories) побед")
    }
    
    mutating func addVictories (count: UInt) -> Void {
        victories += count
    }
}

var chessPlayer = PlayingChess(name: "Victor")
chessPlayer.description()
chessPlayer.addVictories(count: 1)
chessPlayer.description()

// Связывание значения - превращение имени элемента кортежа в локальный параметр для возможности использования его значения в where

// создаем кортеж с именами
let dragonCharacteristics = (color: "зеленый", weight: 3)
var dragonsCount = 4

let dragCharacter = ("1", 3)

switch dragonCharacteristics {
case ("зеленый", 0..<2 ):
    print("Вольер No 1")
case ("красный", 0..<2 ):
    print("Вольер No 2")
case ("зеленый", let weight) where
        weight > 2 && dragonsCount < 5,
       ("красный", let weight) where
        weight > 2 && dragonsCount < 5:
    print("Вольер No 3")
default:
    print("Дракон не может быть принят в стаю")
}

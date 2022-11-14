let possibleString = "1945"
let unpossibleString = "Одна тысяча сто десять"

let convertPossibleString = Int(possibleString)
let convertUnpossibleString = Int(unpossibleString)

// Функция Int(_:) не всегда возвращает опционал, а лишь в том случае, если в нее передано нечисловое значение. Так, если в Int(_:) передается значение типа Double, то нет никакой необходимости возвращать опционал, так как при любом значении Double оно может быть преобразовано в Int (чего нельзя сказать про преобразование String в Int).

type(of: convertPossibleString)
type(of: convertUnpossibleString)

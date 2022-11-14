import Foundation
import GameplayKit

let randomChoice = GKRandomDistribution(lowestValue: 0, highestValue: 2)// константе присваивается генератор случайных чисел что генерирует случайное число от 0 до 2

enum Sign {
    case rock, paper, scissors
    
    // вычисляемое свойство - замыкание со свитч
    var emoji: String {
        
        switch self {// объявляем switch и указываем self чтобы получить доступ к кейсам перечисления Sign, все дело в области видимости, без self - не получтся
        case .paper:
            return "👋"
        case .rock:
            return "👊"
        case .scissors:
            return "✌️"
        }
    }
}

// объявляя экземпляр Sign, указываем его член перечисления - scissors, и выбираем вычисляемое свойство emoji

// в замыкание в switch проваливается в кейс scissors и срабатывает return что возвращает значение "✌️" кейса scissors

let objectSign = Sign.scissors.emoji


//

// функциональный тип - перечисление Sign, чтобы использовать в её теле кейсы данного перечисления

func randomSign() -> Sign {
    
    let sign = randomChoice.nextInt()// константе sign присваивается случайное значение от 0 до 2
    
    // если sign эквивалентно числу 1 то верни член перечисления Sign paper
    
    if sign == 0 {
        return .rock
    } else if sign == 1 {
        return .paper
    } else {
        return .scissors
    }
}

randomSign()


enum GameState {
    case start, win, lose, draw
}


func takeTurn(_ opposite: Sign, _ contrary: Sign) -> GameState {
    
    switch (opposite, contrary) {
        
    case (.rock, .rock),
        (.paper, .paper),
        (.scissors, .scissors):
        return .draw
        
    case (.rock, .scissors),
        (.paper, .rock),
        (.scissors, .paper):
        return .win
        
    default:
        return .lose
    }
}

takeTurn(.scissors, .rock)

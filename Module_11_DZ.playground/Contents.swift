import UIKit

// Задание 1
let person1 = (name: "Иван", surname: "Иванов", age: 46)
let person2 = (name: "Семен", surname: "Семенов", age: 25)

person1.0
person1.1
person1.2
person2.name
person2.surname
person2.age


// Задание 2
let daysInMonths = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

// 2.1
print("""
    В Январе \(daysInMonths[0]) день
    В Феврале \(daysInMonths[1]) дней
    В Марте \(daysInMonths[2]) день
    В Апреле \(daysInMonths[3]) дней
    В Мае \(daysInMonths[4]) день
    В Июне \(daysInMonths[5]) дней
    В Июле \(daysInMonths[6]) день
    В Августе \(daysInMonths[7]) день
    В Сентябре \(daysInMonths[8]) дней
    В Октябре \(daysInMonths[9]) день
    В Ноябре \(daysInMonths[10]) дней
    В декабре \(daysInMonths[11]) день
    """)


// 2.2
let months = ["Январь", "Февраль", "Март", "Апрель", "Май", "Июнь", "Июль", "Август", "Сентябрь", "Октябрь", "Ноябрь", "Декабрь"]

for (index, month) in months.enumerated() {
    print("\(month) - \(daysInMonths[index]) д.")
}


// 2.3
let tupleMonths = [("Январь", 31), ("Февраль", 28), ("Март", 31), ("Апрель", 30), ("Май", 31), ("Июнь", 30), ("Июль", 31), ("Август", 31), ("Сентябрь", 30), ("Октябрь", 31), ("Ноябрь", 30), ("Декабрь", 31)]

for (month, days) in tupleMonths {
    print("Дней в месяце \(month): \(days)")
}


// 2.4
print("""

    
    """)

for (month, days) in tupleMonths.reversed() {
    print("Дней в месяце \(month): \(days)")
}

// Задание 3
var exam = ["Иван Иванов": 0.0, "Мария Михеева": 5.0, "Игорь Костыгин": 1.0, "Владимир Журавлев": 4.0, "Ева Филиппова": 5.0, "Алексей Михайлов": 3.0, "Алина Самохина": 2.0]

// 3.1
exam["Алина Самохина"] = 3.0

// 3.2
for (name, mark) in exam {
    if mark > 2 {
        print("Поздравляю, \(name), Вы сдали экзамен! Ваша оценка - \(mark)")
    } else {
        print("Сожалею, \(name), Ваша оценка - \(mark). Вам придется пересдать экзамен.")
    }
}

// 3.3
exam["Александр Гредяев"] = 4.0

// 3.4
exam.removeValue(forKey: "Иван Иванов")

// 3.5
func countMiddleMark() -> Double {
    let middleMark = Double(exam.values.reduce(0.0, +) / Double(exam.count))
    return(round(middleMark * 100) / 100)
}
print("Средний балл всей группы равен \(countMiddleMark())") // средний балл всей группы посчитан без учета "отчисленного" студента. Чтобы посчитать средний балл с учетом "отчисленного" студента, код из пункта 3.5 нужно вставить в конце пункта 3.3



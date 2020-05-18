import UIKit

var str = "Hello, playground"

//1. Создайте словарь из имен и возрастов, не меньше 6 элементов от 18 до 50 лет.

//Пройдите по каждому элементу словаря методом forEach() и напечатайте в консоле <<“имя” “возраст” years old>>.

//Используйте замыкание в полном и в самом коротком виде.


var newDictionary = [ "Aibige": 7, "Aidana" : 17, "Nurgul": 15, "Jazgul": 10, "Santa": 26, "Salamat":29, "Daddy": 50, "Mommy": 49]

for element in newDictionary{
    print(element)
}


newDictionary.forEach { (name,age) in
    print("\(name) \(age) years old")
}

newDictionary.forEach {print("\($0) \($1) years old")}

// Используя словарь из предыдущего задания, создайте новый словарь с помощью метода filter()
//который будет содержать персон от 20 до 30 лет.
//Используйте замыкание в полном и в самом коротком виде

let newDictionary20To30 = newDictionary.filter {(name: String, age: Int) -> Bool in
    age > 20 && age < 30
}
newDictionary.filter {$1 > 20 && $1 < 30}

//3. Используя словарь из первого задания. Используйте метод first() для получения имени персоны кому за 30 лет.

//Что вы заметили? Какая разница между методом first и filter?

//Используйте замыкание в полном и в самом коротком виде.

let fistName = newDictionary.first {(name: String , age: Int) -> Bool in
    age > 30
}
newDictionary.first{$1 > 30}


//4.Используя метод map() создайте массив имен со словаря из первой задачи. Также создайте массив возрастов, но массив должен содержать возраста типа строки. Используйте замыкание в полном и в самом коротком виде.

let ageArray = newDictionary.map { (name, age) -> String in
  String(age)
}
let nameArray = newDictionary.map { (name, age) -> String in
  String(name)
}

//5.Добавьте два массива из строки предыдущего примера водин массив.

//Используйте метод flatMap() чтоб соединить массивы хранящиеся в новом массиве в один целый массив из строк.

let newArray = [ageArray, nameArray]

let flatAgeName = newArray.flatMap { (array) -> [String] in
     array
}

//6.Используйте метод reduce() чтоб получить
//сумму всех возрастов со словаря из первой задачи.

let totalSum = newDictionary.reduce(1) { (result, element) -> Int in
    return result + element.value
}


//7.Используйте метод reduce(into:) чтоб создать массив имен со словаря из первой задачи. Также используйте тот же метод для создания массива целых чисел из возрастов.

var totalNameReduce = newDictionary.reduce(into: [String]()) { (result, element) in
    result.append(element.key)
}

var totalAgeReduce = newDictionary.reduce(into: [Int]()) { (result, element) in
    result.append(element.value)
}


//8.Отсортируйте массив имен с предыдущего задания по алфавитному порядку с конца от Z-A.
//Также создайте массив имен от сортированных по количеству букв в именах от меньшего к большему.

let sortedArray = newDictionary.sorted { (second, first) -> Bool in
    return second > first
}

let sortedArray1 = nameArray.sorted(by:>)

let sortedArrayByLetters = nameArray.sorted { (first, second) -> Bool in
    return first.count > second.count
}




//homework 11. structures

//1. Реализуйте структуру Macbook, описывающую компьютер.
//Структура должна обладать следующими характеристиками:
//-свойство,описывающее год, цвет, модель и стоимость компьютера
//метод, возвращающий информацию о компьютере



//let mackbook = ["brend":"Apple", "color": "Space grey", "model": "Pro", "size": "128", "price": "1500.00", "year": "2019"]

let book = ["name":"Little women", "author":"Loiza Mey Alcott", "publyear": "2014", "price": "7.99"]

var jacketTuple = (brand: "Zara", color: "Silver", size: "38", price: "25")
var phoneTuple = (manufacturer: "Apple", model:"X", color: "Silver", size: "256")

struct Mackbook {
    
    var color: String
    var model: String
    var size: Int
    var price: Double
    var year: Int
    
    func getInfo ()  {
        print( "I have MacBook Pro. My Macbook Info \(year), \(color), \(model), \(price), \(size). ")
    }
    
}

var mackbook1 = Mackbook(color: "Space Grey", model: "Pro", size: 128, price: 1499.99, year: 2019)

mackbook1.getInfo()
mackbook1.color
mackbook1.model      //mackbook1 is structure
mackbook1.size
mackbook1.price


/* 2. Реализуйте структуру Contact,
 описывающую контактную информацию персоны.
 Структура должна обладать следующими характеристиками:
 -свойство, описывающее имя, фамилию, номер телефона и место работы контакта
-метод, возвращающий полное имя контакта и метод для изменения номера телефона
-добавьте кастомные инициализаторы с возможностью создания контакта только с помощью имени и фамилии.
 Также создания только с помощью номера телефона. */

struct Contact {
    var name: String = "Salamat"
    var lastName: String = "Kochkonbaeva"
    var number: Int = 96597483982
    var myWork: String = "BeautySphere"
    
    func fullName() {
        print("My name is \(name), my last name is \(lastName).")
    }


}

var myInfo = Contact(name: "Salamat", lastName: "Kochkonbaeva", number:96597483982 , myWork:"BeautySphere" )
myInfo.number
myInfo.fullName()
myInfo.number = 96560687096
myInfo.number

struct Contact1 {
    var name: String = "Saadat"
    var lastName: String = "Kochkonbaeva"
    var number: Int = 965908070
    
    func fullName() -> String {
        return( " \(name), \(lastName), \(number).")
    }
    
    init(name:String, lastName:String,number:Int) {
        self.name = name
        self.lastName = lastName
        self.number = number
    }
    init(name:String, lastName:String) {
        self.name = name
        self.lastName = lastName
    }
    init(number:Int) {
        self.number = number
    }
    
}

var info = Contact1(name: "Saadat", lastName: "Kochkonbaeva", number: 965908070)
info.fullName()

var info1 = Contact1(name: "Aidana", lastName: "Kochkonbaeva")

info1.fullName()

let info2 = Contact1(number: 965090807)

info.lastName
info.lastName
info.number

info1.lastName
info1.name
info2.number




 /*  3. Реализуйте структуру Point, описывающую точку на плоскости (2 оси) Структура должна обладать следующими характеристиками:
 
 -свойство, описывающее координаты точки на плоскости (x,y)
 
 -метод принимающую другую точку в качестве входного аргумента и возвращающий расстояние между текущей точкой и переданной
 
-Проверьте работоспособность вашей структуры создайте дветочки (x:3, y:0) и (x:0,y:4) вычислите расстояние между ними ответ должен быть 5.
 
 (Подсказка: для подсчета расстояния между двумя точками можете использовать теорему Пифагора  a² + b² = c²) в Свифт квадратный корень можно вычислить функцией sqrt() */

struct Point {
    var x: Double
    var y: Double
    
    func distance(point: Point) -> Double {
        let differenceX = self.x - point.x
        let differenceY = self.y - point.y
        return sqrt((differenceX * differenceX) + (differenceY * differenceY))
    }
}

var point1 = Point(x: 3, y: 0)
var point2 = Point(x: 0, y: 4)

let distance = point1.distance(point: point2)  // 103


// homework 12 - 13

//Реализуйте структуру Employee, описывающую работника. Структура должна обладать следующими характеристиками:
//-свойство, описывающее имя, фамилию, специальность, годовуюзарплату, недельную зарплату, месячную зарплату.
//(Недельная и месячная зарплата должны быть вычисляемыми свойствами с возможностью назначения нового значения)
//-метод, возвращающий информацию о работнике (профессия-имя-фамилия-годоваязарплата),
//и метод для изменения годовой зарплаты.
//-создайте экземпляр работника,получите месячную и недельную зарплату.
//Назначьте новую недельную зарплату и проверьте изменилась ли годовая зарплата?
//Используйте метод для изменenия годовой зарплаты и вызовите метод для получения информации о работнике.

  


// classes

class Book {
    var name: String
    var size: Int
    
    init(name: String,size: Int) {
        self.name = name
        self.size = size
    }
    
    var info: String {
        "\(name) \(size)"
    }
}

var var1 = Book(name: "Becoming", size: 300)

var1.info
var var2 = var1

var1.name
var1.size = 365
var1.size

var2.name
var2.size   // na vtorom toje izmenilsya
var2.info

//identity

var1 === var2

let var3 = var2

var3 === var2



//inheritance


class Magazine: Book {
    var style: String = "Science"
}

let favoriteBook = Book(name: "Becoming", size: 365)
let favoriteMagazine = Magazine(name: "Science", size: 24)

favoriteBook.info
favoriteMagazine.info
favoriteMagazine.style
favoriteMagazine.name

class Edition {            // edition doljno bylo kak struct i eto ya hotela
                                     // ispolzovat kak method v classe
    var yearlyEdition: Int = 80000
    
    var monthlyEdition: Int {
        
        get {
            let edition = yearlyEdition / 12
            return Int(edition)
        }
        set {
            yearlyEdition = newValue * 12    //new value summa ot yearlyEd. / 12 = 6666
        }                                    // 80 000 / 12= 6666 , 6666 * 12= 80 000
    }
    
    var weeklyEdition: Int {
       
        get {
            let edition = yearlyEdition / 48
            return Int(edition)
        }
        set {
            yearlyEdition = newValue * 48
        }
    }
}

var ed = Edition()
ed.monthlyEdition
ed.weeklyEdition
ed.yearlyEdition = 100000 // my dali drugoe znachenie kak new value
ed.weeklyEdition
ed.monthlyEdition
ed.yearlyEdition


//class mutability

struct Info {
    let name: String
    let genre: String
}


class Newspaper: Edition {
   var information: [Info] = []

func recordInfoAboutNewspaper(_ info: Info) {
    information.append(info)
}

}
var newspaper = Newspaper()

newspaper.information
newspaper.yearlyEdition = 150000
newspaper.monthlyEdition
newspaper.weeklyEdition



let infoOfNewspaper = Info(name: "BishkekTimes", genre: "Political")
let anotherNewspapper = Info(name: "Kut Bilim", genre: "Educational")

newspaper.recordInfoAboutNewspaper(infoOfNewspaper)
newspaper.recordInfoAboutNewspaper(anotherNewspapper)


//homework 14

class Furniture {
    var color: String
    var material: String
    
    init(color: String, material: String){
        self.color = color
        self.material = material
        
    }

    func getInfo(_furniture: Furniture) {
        print(self.color + " " + self.material)
    }
    
}


class Table: Furniture {
    
    var shape: String = "Square"
}

let furniture = Furniture(color: "Brown", material: "Wood")
furniture.material
furniture.color
furniture.getInfo(_furniture: furniture)

let table = Table(color: "Light brown", material: "Wood")

table.shape

class Bookshelf: Furniture {
    
    var shelfRows: Int = 4
}

let shelf = Bookshelf(color: "White", material: "steal")

shelf.shelfRows

class Desk: Table {
    
    var height: Double = 0.8
}

let desk = Desk(color: "Grey", material: "Glass")

desk.height

func getInfo(_furniture: Furniture) {
    print(furniture.color + " " + furniture.material )
}

furniture.getInfo(_furniture: furniture)
table.getInfo(_furniture: table)
shelf.getInfo(_furniture: shelf)
desk.getInfo(_furniture: desk)

//6 nado shestoi or 7 sdelat
//ghhh
//tyyui

class Ship {
  let name: String

  init(name: String) {
    self.name = name
  }


}

class Restaurant{
  let restName: String
  let restCap: Int

  init(restName: String, restCap: Int){
    self.restName = restName
    self.restCap = restCap
  }
}

class Bar{
  let barName: String
  let barCap: Int

  init(barName: String,barCap: Int){
    self.barName = barName
    self.barCap = barCap
  }
}

class Cabin{
  let cabinNumber: Int
  let cabinCap: Int

  init(cabinNumber: Int, cabinCap: Int){
    self.cabinNumber = cabinNumber
    self.cabinCap = cabinCap
  }
}

class Engine{
  let twokHP: Bool
  let fourkHP: Bool

  init(twokHP: Bool, fourkHP: Bool){
    self.twokHP = twokHP
    self.fourkHP = fourkHP
  }
}

class Person{
  let age: Int
  let personalNumber: String

  init(age: Int, personalNumber: String){
    self.age = age
    self.personalNumber = personalNumber
  }

}


let ship = Ship(name: "The Cruiser")
let shipRestaurant = Restaurant(restName: "Ristorante", restCap: 300)
let lowerBar = Bar(barName: "Lower Dock Bar", barCap: 50)
let upperBar = Bar(barName: "Upper Dock Bar", barCap: 50)
//Build cabins
var tempcabins: [Cabin] = []
for i in 1..<76{
  tempcabins.append(Cabin(cabinNumber: i, cabinCap: 4))
}
for i in 76..<101{
  tempcabins.append(Cabin(cabinNumber: i, cabinCap: 2))
}
let cabins = tempcabins
//
var engines = Engine(twokHP: false, fourkHP: true)

//Hire crew
var crew: [Person] = [] 
for i in 1..<51{
   crew.append(Person(age: Int.random(in: 20 ..< 60), personalNumber: "C\(i)"))
}
//Board tourists
var tourists: [Person] = [] 
for i in 1..<351{
   tourists.append(Person(age: Int.random(in: 1 ..< 60), personalNumber: "T\(i)"))
}

// func assignTourists(tourists: [Person]){
//   var lowBarCount = 0
//   var upBarCount = 0
//   var ristoranteCount = 0
//   var cabinCount = 0

//   for person in tourists {
//     switch Int.random(in: 1..<4){
//       case 1:
//         if lowBarCount == 50{
//           break;
//           }
//         lowBarCount += 1
//         print("\(person.personalNumber) is in Lower Dock Bar")
//       case 2:
//         if upBarCount == 50{
//           break;
//           }
//         upBarCount += 1
//         print("\(person.personalNumber) is in Upper Dock Bar")
//       case 3:
//         ristoranteCount += 1
//         print("\(person.personalNumber) is in Restaurant")
//       default:  
//         cabinCount += 1
//         print("\(person.personalNumber) is in cabin")
//     }
//   }
// }

print(ship.name)
print(shipRestaurant.restName, shipRestaurant.restCap)
print(lowerBar.barName, lowerBar.barCap)
print(upperBar.barName, upperBar.barCap)
print("Cabin number: \(cabins[99].cabinNumber) Cabin capacity: \(cabins[99].cabinCap)")
print("2kHP: \(engines.twokHP) | 4kHP: \(engines.fourkHP)")
print(crew[0].personalNumber, crew[0].age)
print(tourists[0].personalNumber, tourists[0].age)
// var exam = assignTourists(tourists:)

// // var lowBarCount = 0
//   var upBarCount = 0
//   var ristoranteCount = 0
//   var cabinCount = 0

  // for person in tourists {
  //    switch Int.random(in: 1..<15){
  //    case 1:
  //       if lowBarCount != 50{
  //         lowBarCount += 1
  //         print("\(person.personalNumber) is in Lower Dock Bar")    
  //       }
  //    case 2:
  //       if upBarCount != 50{
  //        upBarCount += 1
  //        print("\(person.personalNumber) is in Upper Dock Bar")       
  //       }    
  //     case 3:
  //       ristoranteCount += 1
  //       print("\(person.personalNumber) is in Restaurant")
  //       break;
  //     default:  
  //       cabinCount += 1
  //       print("\(person.personalNumber) is in cabin")
  //   }
  // }
  //   // print("\(lowBarCount) in Lower Dock Bar")
  //   // print("\(upBarCount) in Upper Dock Bar")
  //   // print("\(ristoranteCount) in Ristorante")
  //   // print("\(cabinCount) in Cabins")




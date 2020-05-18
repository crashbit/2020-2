import UIKit

//: ENUMS -- Tipos de dato de primer nivel, Struct, Class

//: NIL = Es un tipo enumerado = true

enum Filtro{
    case albums
    case playlist
    case podcasts
    case books
}

let tipo1 = Filtro.albums
print(tipo1)

let tipo2: Filtro = .playlist

func funcionFiltro(_ type: Filtro) {
    if type == .albums{
        print("Es un album!")
    }
}

funcionFiltro(.albums)

//: Raw Values

enum Dado: Int{
    case cero
    case uno
    case dos
    case tres
}

let dadoTest: Dado = .dos
print(dadoTest.rawValue)

enum Estado: String{
    case aprobado = "Aprobado"
    case reprobado = "Reprobado"
    case pendiente = "Pendiente"
}

let estadoTest: Estado = .pendiente // "pendiente"
type(of: estadoTest.rawValue)
print(estadoTest.rawValue)

let estadoTest2 = Estado(rawValue: "Aprobado")
estadoTest2?.rawValue

//: Definición por tipo de dato

enum MyError{
    case number(Int)
    case message(String)
    case fatal
}

let err: MyError = .number(4)

//: Inicializadores de ENUMS

enum Animales: String, CaseIterable{
    case perro = "Perros"
    case gato = "Gatos"
    func habla(){
        print("Hola")
    }
    
    init(_ x:Int){
        self = Animales.allCases[x]
    }
}

let animal = Animales.init(1)
animal.habla()

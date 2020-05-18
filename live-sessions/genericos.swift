import UIKit

//: Genericos

//: Sobrecarga de funciones
func sumar(_ x: Int, _ y: Int){}
func sumar(_ x: Float, _ y: Float){}
func sumar(_ x: String, _ y: String){}

//: Uso en funciones
func saludarGente<T>(_ saludo: T) -> T{
    print(T.self)
    return saludo
}

let resultado1 = saludarGente("hola, como estas?")
let resultado2 = saludarGente(3.4)

class Alumno{
    var nombre: String?
}


let resultado3 = saludarGente(Alumno())



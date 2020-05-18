import UIKit

//: # Protocolos y Extensiones

extension Saludar{
    func despidete(){
        print("Adios")
    }
}

extension Alumno{
    func leer(){
        print("Alumno leyendo")
    }
}

protocol Saludar{
    func saluda()
}

struct Alumno: Saludar{
    
    func saluda() {
        print("Hola")
    }
    var nombre: String
}

class Gato: Saludar{
    func saluda() {
        print("Miau")
    }
    var nombre: String?
}

class Profesor{
    func saluda(){
        print("Hola soy el profesor")
    }
}

var carlos = Alumno(nombre: "Carlos")
var michi = Gato()

var arregloSaludadores: [Saludar] = [carlos, michi]

func Saluda(_ elQueSaluda: Saludar){
    elQueSaluda.saluda()
}

michi.despidete()
carlos.despidete()
Saluda(michi)
Saluda(carlos)
carlos.leer()

extension String{
    func imprimeAlgo(){
        print("aaaalgooo")
    }
}

var algunaCosa: String = "AlgunaCosa"
algunaCosa.imprimeAlgo()

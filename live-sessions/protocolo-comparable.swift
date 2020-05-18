import UIKit

struct Empleado: Comparable{
    var edad: Int
    var nombre: String
    var sueldo: Float
    
    static func == (lhs: Empleado, rhs: Empleado) -> Bool{
        if lhs.edad == rhs.edad{
            return true
        }else{
            return false
        }
    }
    
    static func < (lhs: Empleado, rhs: Empleado) -> Bool {
        if lhs.edad < rhs.edad{
            return true
        }else{
            return false
        }
    }
}

var godin = Empleado(edad: 20, nombre: "Godin", sueldo: 200.50)
var esperancito = Empleado(edad: 30, nombre: "Esperancito", sueldo: 300.00)
var chavito = Empleado(edad: 25, nombre: "Chavito", sueldo: 100.00)


func compara(_ emp1: Empleado, _ emp2: Empleado) -> Int{
    if emp1 == emp2{
        return 0
    }
    
    if emp1 < emp2{
        return 1
    }else{
        return -1
    }
}

//: Usando la función
compara(esperancito, godin)


func burbuja(_ arreglo: [Empleado]) -> [Empleado]{
    var temp: Empleado
    var resultado = arreglo
    
    for i in 0..<resultado.count{
        for j in i+1..<resultado.count{
            if resultado[i] < resultado[j]{
                temp = arreglo[i]
                resultado[i] = resultado[j]
                resultado[j] = temp
            }
        }
    }
    
    return resultado
}

var arreglo = [esperancito, godin, chavito]

burbuja(arreglo)

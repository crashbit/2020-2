import UIKit

class Car{
    var accesories: [Accesory] = []
    var name: String?
    
    func addAccesory(accesory: Accesory){
        accesories.append(accesory)
    }
}

class A3: Car{
    
}

class A4: Car{
    
}

protocol Accesory{
    var type: String { get set}
    func saluda()
}

extension Accesory{
    func saluda(){
        print("Hola")
    }
}


class Radio: Accesory{
    var type: String
    
    init(type:String){
        self.type = type
    }
}

class SunRoof: Accesory{
    var type: String
    
    init(type:String){
        self.type = type
    }
}

var miPrimerCarrito = A3()
var accesorio = Radio(type: "Radio")
var quemacocos = SunRoof(type: "Quemacocos")

miPrimerCarrito.addAccesory(accesory: accesorio)
miPrimerCarrito.addAccesory(accesory: quemacocos)



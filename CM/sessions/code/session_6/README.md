## Uso de funciones
```swift
import UIKit
```

 Declaración de funciones

```swift
func suma(){
    print("sumando")
}

var resultado = suma()

func suma1(x: Int, y: Int){
    print( x + y )
}

suma1(x: 3, y: 6)

func suma2(x: Int, y: Int) -> Int{
    return x + y
}
```

Firma de la función anterior =  __(Int, Int) -> Int__
Ocultación de parámetros

```swift
func suma3(_ x: Int, y: Int) -> Int{
    return x + y
}

suma3(5, y: 10)
```

Firma de la función anterior =  __(Int, Int) -> Int__
Alias de parámetros

```swift
func multiplica(_ x: Int, por y: Int) -> Int{
    return x * y
}

multiplica(3, por: 5)
```

Firma de la función anterior =  __(Int, Int) -> Int__
Funciones como parámetros

```swift
func ejecuta(a: Int, b:Int, funcion:(Int, Int) -> Int ) -> Int{
    return funcion(a, b)
}

ejecuta(a: 3, b: 4, funcion: multiplica)
```

Firma de la función anterior = __(Int, Int, (Int, Int)->Int) -> Int__
Cambio de constantes (__let__) a variables(__var__)

```swift
var x:Int = 10

func cambia(param: inout Int){
    param += 1
}

cambia(param: &x)
```

Overloading

```swift
func say(palabra: String){
    print(palabra)
}

func say(palabra: Int){
    for _ in 0...palabra{
        print("hola")
    }
}
```

Parámetros por default

```swift
func divide(_ a:Int, entre b: Int = 1){
    print(a/b)
}

divide(3, entre: 4)
```

Parámetros varíatricos

```swift
func imprimePalabras(_ palabras:String ...){
    for palabra in palabras{
        print(palabra, separator: ", " , terminator: ",")
    }
}

//imprimePalabras("hola", "adios", "feo", "marinanita", "pawis")
```

Funciones anónimas

```swift
let a = { () -> () in
    print("funcion anonima")
}
```

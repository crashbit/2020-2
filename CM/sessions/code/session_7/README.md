
## Uso de optionals

```swift
import UIKit
```

# Optionals

```swift
var nombre: String?

nombre = "Lalo"
```

Force unwrapping
 ```
 print(nombre!)
```
Optional binding

```swift
if let nombreRespaldo = nombre{
    print("Si hubo valor: \(nombreRespaldo)")
}else{
    print("No hubo valor")
}
```

Nil Coalescente

```swift
let nombreRespaldo = nombre ?? "Don nadie"
print(nombreRespaldo)
```

Guard binding

```swift
func saluda(cadena: String?){
    guard let saludo = cadena else {
        print("llego un nulo")
        return
    }
    
    print("Este es el saludo \(saludo)")
}

saluda(cadena: "Hola")
saluda(cadena: nil)
```

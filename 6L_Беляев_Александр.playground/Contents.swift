import UIKit

struct Stack<T> : CustomStringConvertible {
    
    var array = [T]()
    
    mutating func addElement(_ element: T) {
        array.append(element)
    }
    
    mutating func removeElement () -> T {
        return array.removeLast()
    }
    
    var description: String {
        return "\(array)"
    }
}

var stackOfFloat = Stack<Float> ()

var floatElement: Float = 13.4
for _ in 0...5 {
    stackOfFloat.addElement(Float(floatElement))
    floatElement += 7.5
}

print (stackOfFloat.description)
stackOfFloat.removeElement()
print (stackOfFloat.description)

var stackOfString = Stack<String> ()

var stringElement: String = "\(floatElement)"
for _ in 0...5 {
    stackOfString.addElement("\(floatElement)")
    floatElement += 3.5
}

print (stackOfString.description)
stackOfString.removeElement()
print (stackOfString.description)

let arrayOfStrings = stackOfFloat.array.map { element -> String in
    return "\(element)"
}
print(arrayOfStrings)

let filtedStackOfFloat = stackOfFloat.array.filter{$0 > 20 && $0 < 30}
print(filtedStackOfFloat)

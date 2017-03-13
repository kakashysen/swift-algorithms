//: Playground - noun: a place where people can play

public struct Stack<T>{
    
    fileprivate var array = [T]()
    
    public var isEmpty: Bool {
        return array.isEmpty
    }
    
    public var count: Int {
        return array.count
    }
    
    public mutating func push(_ element: T) {
        array.append(element)
    }
    
    public mutating func pop() -> T? {
        return array.popLast()
    }
    
    public var top: T? {
        return array.last
    }
    
}

var stack = Stack<Int>()
stack.push(2)
stack.push(4)
stack.push(6)
stack.push(8)

print("top \(stack.top!)")

print("pop \(stack.pop()!)")

print("top \(stack.top!)")

print(stack)



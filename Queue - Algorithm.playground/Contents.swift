//: Playground - noun: a place where people can play

public struct Queue<T> {
    fileprivate var array = [T]()
    
    public var count: Int {
        return array.count
    }
    
    public var isEmpty: Bool {
        return array.isEmpty
    }
    
    public var first: T? {
        if isEmpty {
            return nil
        }
        else {
            return array.first
        }
    }
    
    public var last: T? {
        if isEmpty {
            return nil
        }
        else {
            return array.last
        }
    }
    
    public mutating func enqueue(_ element: T) {
        array.append(element)
    }
    
    public mutating func dequeue() -> T? {
        if isEmpty {
            return nil
        }
        else {
            return array.removeFirst()
        }
    }
}

var queue = Queue<Int>()
queue.enqueue(1)
queue.enqueue(2)
queue.enqueue(3)
queue.enqueue(4)
queue.enqueue(5)
queue.enqueue(6)
queue.first
queue.last
print(queue)


//
//  main.swift
//  GeekBrainsLess
//
//  Created by Игорь Карпенко on 25.11.2021.

import Foundation

struct queuer<Element: Comparable> {
    var items = [Element]()
    
    mutating func add (_ item: Element) {
        items.append(item)
    }
    
    mutating func next() -> Element  {
        print("Следующий в очереди \(items.first!)")
        return items.removeFirst()
    }
    
    func filter(item: Element) {
        print("Find \(items.filter{$0 == item })")
    }
    
    mutating func propertySort() -> [Element] {
        return items.sorted(by: >)
    }
    
    subscript (index: Int) -> Element? {
        return (index < items.count ? items[index] : nil)
    }
    func printCount() {
        print(items.count)
    }
}

var round = queuer<String>(items: ["Игорь"])
round.add("Миша")
round.add("Настя")
round.add("Рома")
print(round.items)
print("Отсортированный: \(round.propertySort())")

round.next()
round.next()
round.add("Валера")
print(round)
round.filter(item: "Настя")
round.printCount()

print(round)
print(round[3])
print(round[1])



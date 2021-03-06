//: Playground - noun: a place where people can play

import UIKit

struct Task {
    var title:String
    var time:Int?
    
    var owner:Employee
    var participant:Employee?
}

class Employee {
    var name:String?
    var phoneNumber:String?
    var boss:Employee?
}

let me:Employee = Employee()
me.name = "Alex"
me.phoneNumber = "010-1234-5678"


let toby = Employee()
toby.name = "Toby"
toby.phoneNumber = "011-5678-1234"

print("\(toby.phoneNumber!)")

var callTask = Task(title: "Call to Toby", time: 10 * 60, owner: me, participant: toby)
var reportTask = Task(title: "Report to Boss", time: nil, owner: me, participant: nil)

callTask.participant?.phoneNumber = "010-5678-1234"
print("\(toby.phoneNumber!)")

var todayTask:[Task] = []

todayTask += [callTask, reportTask]
todayTask[1].time = 15 * 60
callTask.title = "Call to Toby"
print("today task = \(todayTask), callTask =\(callTask)")




import Foundation
import EventKit

protocol Event {
    
    var title: String { get }
    var startDate: String { get }
    var endDate: String { get }
}

//Adaptee
class EventAdaptee {
    
    private var dateFormatter: DateFormatter {
        let dataFormatter = DateFormatter()
        dataFormatter.dateFormat = "yyyy. MM . dd. HH:mm"
        return dataFormatter
    }
    
    private var event: EKEvent
    
    init(event: EKEvent){
        self.event = event
    }
    
}

extension EventAdaptee: Event {
    
    var title: String {
        return self.event.title
    }
    
    var startDate: String {
        return self.dateFormatter.string(from: event.startDate)
    }
    
    var endDate: String {
        return self.dateFormatter.string(from: event.endDate)
    }

}

let dataFormatter = DateFormatter()
dataFormatter.dateFormat = "MM/dd/yyyy HH:mm"

let calendarEvent = EKEvent(eventStore: EKEventStore())
calendarEvent.title = "Hello World Event"
calendarEvent.startDate = dataFormatter.date(from: "09/15/2015 10:00")
calendarEvent.endDate = dataFormatter.date(from: "09/15/2015 12:00")


let adapter = EventAdaptee(event: calendarEvent)
adapter.title
adapter.startDate
adapter.endDate

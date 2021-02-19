//
//  FlightsHelper.swift
//  MooglFlightUiKit
//
//  Created by eyal avisar on 09/02/2021.
//

import Foundation

let places = [
    Flights(id: UUID(), destination: "Boston", origin: "Tel Aviv", travelDate: Date(timeIntervalSinceNow: TimeInterval(2)), returnDate: Date(timeIntervalSinceNow: TimeInterval(2)), stops: "None"),
    Flights(id: UUID(), destination: "Michigan", origin: "Tel Aviv", travelDate: Date(timeIntervalSinceNow: TimeInterval(3)), returnDate: Date(timeIntervalSinceNow: TimeInterval(2)), stops: "None"),
    Flights(id: UUID(), destination: "Paris", origin: "Tel Aviv", travelDate: Date(), returnDate: Date(timeIntervalSinceNow: TimeInterval(2)), stops: "None"),
    Flights(id: UUID(), destination: "Nairoby", origin: "Tel Aviv", travelDate: Date(timeIntervalSinceNow: TimeInterval(7)), returnDate: Date(timeIntervalSinceNow: TimeInterval(2)), stops: "None"),
    Flights(id: UUID(), destination: "Tokyo", origin: "Tel Aviv", travelDate: Date(), returnDate: Date(timeIntervalSinceNow: TimeInterval(2)), stops: "None"),
    Flights(id: UUID(), destination: "Bombay", origin: "Tel Aviv", travelDate: Date(), returnDate: Date(timeIntervalSinceNow: TimeInterval(2)), stops: "None"),
    Flights(id: UUID(), destination: "Toronto", origin: "Tel Aviv", travelDate: Date(timeIntervalSinceNow: TimeInterval(24)), returnDate: Date(timeIntervalSinceNow: TimeInterval(2)), stops: "None"),
]

var suggestions = [Flights]()

struct Flights: Identifiable, CustomStringConvertible {
    var description: String {
        "The flight from \(origin) to \(destination) departs at \(travelDate) and returns at \(returnDate)"
    }
    
    var id:UUID
    var destination : String
    var origin: String
    var travelDate: Date
    var returnDate: Date
    var stops: String
}

func lookForFlight(destination: String, origin: String, travelDate: Date, returnDate: Date) {
    let flight = Flights(id: UUID(), destination: destination, origin: origin, travelDate: travelDate, returnDate: returnDate, stops: "")
    
    print("requested flight \(flight)")
    suggestions = places.filter {
        
         $0.destination.lowercased().starts(with: destination.lowercased())
    }
    print(suggestions)
}

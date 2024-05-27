//
//  NotificationCells.swift
//  BGClan
//
//  Created by Shoaib Akhtar on 21/05/24.
//

import Foundation

struct UserModel{
    var firstName : String
    var lastName : String
    var email : String
    var phoneNumber : Int64
    var userInGameRole : String
    var userName : String
    var teamStatus : Bool
    var profilePhotoPath : String?
    var age : Int
    var location : String?
    var playingRole : String?
}

struct PostModel{
    var caption : String
    var contentPath : String
    var postingTime : String
    var likesCount : Int
    var commentsCount : Int
}

struct EventModel{
    var hostedBy : String
    var location : String
    var startDate : Date
    var endDate : Date
    var registrationLink : String
    var description : String
    var numberInterested : String
}

struct Team{
    var teamName : String
    var teamTag : String
    var currentMembers : Int
    var isTeamComplete : Bool
    var requiredRole : String?
    var numberOfEventsPlayed : Int
    var teamTier : String
}

struct NotificationCells{
    let notificationText : String
    let  time : String
}

struct ChatsCell{
    let SenderFullName : String
    let SenderMessage : String
    let MessageTime : String
}
struct EventsCell{
    let EventName : String
    let EventDate : String
    let EventLocation : String
    let EventImpression : String
}

//
//  Chapter1.swift
//  CLIStoryTemplate
//

import Foundation


var newTeam: [PlayerModel] = []

var pointTotal = 0

func chapterOne() {
    
    //func pointTotal(){
    //
    //}
    func generateQB(){
        lionsQB.shuffle()
        newTeam.append(lionsQB[0])
        pointTotal += lionsQB[0].value
    }
    
    func generateRB(){
        lionsRB.shuffle()
        newTeam.append(lionsRB[0])
        pointTotal += lionsRB[0].value
    }
    
    func generateWR(){
        lionsWR.shuffle()
        newTeam.append(lionsWR[0])
        pointTotal += lionsWR[0].value
    }
    
    func generateDP1(){
        lionsDP1.shuffle()
        newTeam.append(lionsDP1[0])
        pointTotal += lionsDP1[0].value
    }
    
    func generateDP2(){
        lionsDP2.shuffle()
        newTeam.append(lionsDP2[0])
        pointTotal += lionsDP2[0].value
    }
    
    func generateDP3(){
        lionsDP3.shuffle()
        newTeam.append(lionsDP3[0])
        pointTotal += lionsDP3[0].value
    }
    
    func generateTeam() {
        generateQB()
        generateWR()
        generateRB()
        generateDP1()
        generateDP2()
        generateDP3()
    }
    
    generateTeam()
    
  
    
    
    print("Welcome to the 2023-2024 NFL season!,You have just been apointed as the head coach for the Detroit Lions! Enter your name to begin. Meet Coach \(coachName), a passionate football enthusiast, who's been given the chance to lead the Lions to a fantasy football championship. Coach \(coachName), the day you have long anticipated has arrived, draft day! You carefully select the players who will represent the Lions on the field. Your selection will shape the course of the season.")
    
    print("Every team needs a QuarterBack, the QuarterBack you have been given is \(newTeam[0].name) and their point value is \(newTeam[0].value)"  )
    
    print("Every team needs a Runningback to establish the running game, the RunningBack you have been given is \(newTeam[2].name) and their point value is  \(newTeam[2].value)")
    
    print("No team is complete without their star Wide Reciever, the Wide Reciever you have been given is \(newTeam[1].name) and their point value is  \(newTeam[1].value)")
    
    print("Defense is always the best offense, the three defensive players you have been given are \(newTeam[3].name) and his point value is \(newTeam[3].value), \(newTeam[4].name) and his point value is \(newTeam[4].value), \(newTeam[5].name) and his point value is \(newTeam[5].value)")
    
    print("This is the point total of your team! \(pointTotal)")
    
    print("What a great team we got here! This should shape up to be a great season!")
}


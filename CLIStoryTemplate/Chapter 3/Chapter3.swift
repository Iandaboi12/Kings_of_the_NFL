//
//  Chapter3.swift
//  CLIStoryTemplate
//

import Foundation
import Cocoa

enum coachfeelings {
    case happy
    case thrilled
    case sad
    case upset
    case excited
    case frustrated
    case defeated
    case nervous
}


struct PlayOffModel: Equatable {
let POTeamName:String
let POScore:Int
}

var POteams:[PlayOffModel] = [
    PlayOffModel(POTeamName: "Philedelphia Eagles", POScore: 42),
    PlayOffModel(POTeamName: "Buffalo Bills", POScore: 43),
    PlayOffModel(POTeamName: "Los Angeles Rams", POScore: 47),
    PlayOffModel(POTeamName: "San Francisco 49ers", POScore: 43),
    PlayOffModel(POTeamName: "Washington Commanders", POScore: 50)
]


//Bools for the playoff game generator
var didWinFirstRound = false
var didWinSecondRound = false
var didWinThirdRound = false
var didWinSuperbowl = false

func chapterThree() {

    print("Great job \(coachName)!!")
    print("You've made it through the regular season, now let's see how you made it to the play-offs!")
    print("You need to have at least 10 regualar season wins to make it.")
    print("You're ending season scores are")
   
    
    print("Total Wins")
    print(totalWins)
    
    print("Total Losses")
    print(totalLosses)
    
    print("Total Draws")
    print(totalDraws)
    
    // add if statment that will show if you made it to the play-off; you need to have 10 wins
    if totalWins >= 10 {
        print("You made it, you're moving on to the play-offs!")
        print("you are feeling \(coachfeelings.thrilled)!")
    }
    else {
        print("Better luck next season, looks like you're still the same old Lions")
    }
    
        
        if let newTeam = POteams.randomElement() {
            print("Your first Play-Off game is today.")
            print("The lions will now play against \(newTeam.POTeamName)")
            
            if pointTotal >= newTeam.POScore {
                
        
                print("Great job, coach! You Won against the \(newTeam.POTeamName)! That means you are moving on to the next Play-Off game!")
                
                totalWins += 1
                POteams.removeAll(where: {$0 == newTeam })
                didWinFirstRound = true
            
            } else if pointTotal < newTeam.POScore {
                print("Your team lost against the \(newTeam.POTeamName), SOL!")
                print("you are feeling \(coachfeelings.sad)...")
                
                totalLosses += 1
            
            }
            
        }

    if didWinFirstRound == true {
        
        if let newTeam = POteams.randomElement() {
            print("You're in the second round of the play-off's now")
            print("The lions will now play against \(newTeam.POTeamName)")
            print("you are feeling \(coachfeelings.happy)!")
            print("Let's lead the team in the fight song!! ")
            print(chant())
            
            if pointTotal >= newTeam.POScore {
                
                
                print("Great job, coach! You Won against the \(newTeam.POTeamName)! That means you are moving on to the next Play-Off game!")
                
                totalWins += 1
                POteams.removeAll(where: {$0 == newTeam })
                didWinSecondRound = true
            
            } else if pointTotal < newTeam.POScore {
                print("Your team lost against the \(newTeam.POTeamName), SOL!")
                print("you are feeling \(coachfeelings.frustrated)!")
                
                totalLosses += 1
            
            }
            
        }
    
    
    }
    
    if didWinSecondRound == true {
        
        if let newTeam = POteams.randomElement() {
            print("Last game in the play-offs, good luck! If we make it, we are going to the Superbowl for the first time in history!!")
            print("The lions will now play against \(newTeam.POTeamName)")
            print("you are feeling \(coachfeelings.nervous)!")
            
            if pointTotal >= newTeam.POScore {
                
                
                print("Great job, coach! You Won against the \(newTeam.POTeamName)! You made histroy, you are taking the Lions to the Superbowl!")
                print("You are feeling \(coachfeelings.excited)!!")
                
                totalWins += 1
                POteams.removeAll(where: {$0 == newTeam })
                didWinThirdRound = true
            
            } else if pointTotal < newTeam.POScore {
                print("Your team lost against the \(newTeam.POTeamName), SOL!")
                print("You are feeling \(coachfeelings.sad)...")
                
                totalLosses += 1
            
            }
            
        }
    
    
    }
    
    if didWinThirdRound == true {
        
        if let newTeam = POteams.randomElement() {
            print("Welcome to the Superbowl!! Now is your chance to show that the Lions really are the Kings of the NFL. This is your day to make Detroit proud")
            print("The lions will now play against \(newTeam.POTeamName)")
            
            if pointTotal >= newTeam.POScore {
                
                
                print("Great job, coach! You Won against the \(newTeam.POTeamName)! YOU DID IT!!!!")
                print("You, the team, and the whole city of Detroit are feeling \(coachfeelings.thrilled)!!!")
                print("Let's lead the team in the fight song!! ")
                print(chant())
                
                
                totalWins += 1
                POteams.removeAll(where: {$0 == newTeam })
                didWinSuperbowl = true
            
            } else if pointTotal < newTeam.POScore {
                print("Your team lost against the \(newTeam.POTeamName), SOL!")
                print("You and the whole city of Detroit are feeling \(coachfeelings.defeated).")
                
                totalLosses += 1
            
            }
            
        }
    
    
    }
    
    
}




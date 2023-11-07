//
//  main.swift
//  CLIStoryTemplate
//

struct OpponentModel {
let TeamName:String
let Score:Int
}

struct PlayerModel {
    var name: String
    var position: String
    var value: Int
}

import Foundation

let teams:[OpponentModel] = [

OpponentModel(TeamName: "Kansas City Chiefs", Score: 57),
OpponentModel(TeamName: "Seattle Seahawks", Score: 51),
OpponentModel(TeamName: "Atlanta Falcons", Score: 41),
OpponentModel(TeamName: "Green Bay Packers", Score: 33),
OpponentModel(TeamName: "Carolina Panthers", Score: 10),
OpponentModel(TeamName: "Tampa Bay Buccaneers", Score: 40),
OpponentModel(TeamName: "Las Vegas Raiders", Score: 25),
OpponentModel(TeamName: "Los Angeles Chargers", Score: 42),
OpponentModel(TeamName: "Chicago Bears", Score: 26),
OpponentModel(TeamName: "New Orleans Saints", Score: 35),
OpponentModel(TeamName: "Denver Broncos", Score: 34),
OpponentModel(TeamName: "Minnesota Vikings", Score: 46),
OpponentModel(TeamName: "Dallas Cowboys", Score: 50),
OpponentModel(TeamName: "New York Giants", Score: 40),
OpponentModel(TeamName: "Miami Dolphins", Score: 50)

]

var lionsQB:[PlayerModel] = [
PlayerModel(name: "Matthew Stafford", position: "QB", value: 10),
PlayerModel(name: "Bobby Lane", position: "QB", value: 8),
PlayerModel(name: "Jared Goff", position: "QB", value: 7),
PlayerModel(name: "Greg Landry", position: "QB", value: 7),
PlayerModel(name: "Scott Mitchell", position: "QB", value: 6)
]

var lionsWR:[PlayerModel] = [
PlayerModel(name: "Calvin Johnson 'Megatron'", position: "WR", value: 10),
PlayerModel(name: "Herman Moore", position: "WR", value: 10),
PlayerModel(name: "Golden Tate III", position: "WR", value: 9),
PlayerModel(name: "JOhnnie Morton", position: "WR", value: 9),
PlayerModel(name: "Amon-Ra St. Borwn", position: "WR", value: 8),
PlayerModel(name: "Jameson Williams", position: "WR", value: 5),
PlayerModel(name: "Marvin Jones", position: "WR", value: 6)
]

var lionsRB:[PlayerModel] = [
PlayerModel(name: "Barry Sanders", position: "RB", value: 10),
PlayerModel(name: "Billy Sims", position: "RB", value: 9),
PlayerModel(name: "Doack Walker", position: "RB", value: 8),
PlayerModel(name: "Mel Farr", position: "RB", value: 8),
PlayerModel(name: "David Mont", position: "RB", value: 8),
PlayerModel(name: "D'Andre Swift", position: "RB", value: 7)
]

var lionsDP1:[PlayerModel] = [
PlayerModel(name: "Joe Schmidt", position: "DP1", value: 10),
PlayerModel(name: "Lem Barney", position: "DP1", value: 10),
PlayerModel(name: "Brian Branch", position: "DP1", value: 5),
PlayerModel(name: "Bennie Blades", position: "DP1", value: 8),
]

var lionsDP2:[PlayerModel] = [
PlayerModel(name: "James Houston", position: "DP2", value: 6),
PlayerModel(name: "Aiden Hutchinson", position: "DP2", value: 7),
PlayerModel(name: "Dick LeBeau", position: "DP2", value: 9),
PlayerModel(name: "Richard Lane", position: "DP2", value: 9),
]

var lionsDP3:[PlayerModel] = [
PlayerModel(name: "C.J.Gardner-Johnson", position: "DP3", value: 8),
PlayerModel(name: "Alex Anzalone", position: "DP3", value: 7),
PlayerModel(name: "Jack Campbell", position: "DP3", value: 6),
PlayerModel(name:"Jack Christiansen", position: "DP3", value: 9)
]

func readStory() {
    chapterOne()
    chapterTwo()
    chapterThree()
    chapterFour()
    chapterFive()
}

readStory()

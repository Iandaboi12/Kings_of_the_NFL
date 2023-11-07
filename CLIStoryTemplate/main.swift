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

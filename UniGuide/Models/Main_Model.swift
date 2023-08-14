//
//  Main_Model.swift
//  UniGuide
//
//  Created by Parineeta Padgilwar on 8/9/23.
//

import Foundation

struct Topic {
    let id = UUID()
    let view: [ViewType]
    let title: String
    let image: String
    let sectionsComplete: Int
    let quiz: Quiz?
}

enum ViewType {
    case materials(materialInfo: [PrettierInfo])
    case tips(tipsInfo: [PrettierInfo])
    case instruction(instructionInfo: [String])
    case example(exampleInfo: [String])
}

struct PrettierInfo {
    let id = UUID()
    let text: [String]
    let image: String
    let isBought: Bool?
}

struct Quiz {
    let questions: [QuizQuestion]
    var percentage: Int = 0
}

struct QuizQuestion {
    let id = UUID()
    let question: String
    let realAnswer: String
    var personAnswer: String?
    let possibleAnswers: [String]
    let answeredRight: Bool?
}


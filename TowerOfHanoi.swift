// Created by: Julie Nguyen
// Created on: Sept 2018
// Created for: ICS4U
// Recursive Tower of Hanoi program; returns instructions for n disks in minimal moves 

import Foundation

func minMoves(num: Int) -> Decimal {
    var moves = pow(2, num) - 1
    return moves
}

func printMoves(num: Int, startPole: String, endPole: String) {
    print("Move disk \(num) from \(startPole) to \(endPole).")
}

func moves(num: Int, startPole: String, endPole: String, auxPole: String) {
    if(num == 1) {
        printMoves(num: num, startPole: startPole, endPole: endPole)
    }
    else {
        moves(num: num - 1, startPole: startPole, endPole: auxPole, auxPole: endPole)
        printMoves(num: num, startPole: startPole, endPole: endPole)
        moves(num: num - 1, startPole: auxPole, endPole: endPole, auxPole: startPole)
    }
}

var disks: Int

let poleA = "Pole A"
let poleB = "Pole B"
let poleC = "Pole C"

print("Enter a postive integer for the number of disks: ")

disks = askForNumber()

if disks == 0 {
    print("Error")
}
else {
    let min = minMoves(num: disks)
    
    print("Minimum number of moves: \(min)")
    moves(num: disks, startPole: poleA, endPole: poleB, auxPole: poleC)
}

"
I represent the soluton to Advent of Code 2021 Day One problem.

"
Class {
	#name : #AdventOfCode2021Day02,
	#superclass : #Object,
	#classVars : [
		'Directions'
	],
	#category : #'AdventOfCode2021-Day 02'
}

{ #category : #parsing }
AdventOfCode2021Day02 class >> execute: commands on: submarine [

	commands do: [ :command |
		| direction value |
		direction := command first.
		value := command second.
		(Directions at: direction) value: submarine value: value
	]

]

{ #category : #'class initialization' }
AdventOfCode2021Day02 class >> initialize [

	Directions := Dictionary newFrom: { 
			('up' -> [ :submarine :value | submarine up: value ]).
			('down' -> [ :submarine :value | submarine down: value ]).
			('forward' -> [ :submarine :value | submarine forward: value ]) }
]

{ #category : #parsing }
AdventOfCode2021Day02 class >> parseInput: aString [

	^ aString lines collect: #parseLiterals

]

{ #category : #computation }
AdventOfCode2021Day02 class >> partOne: input [

	| submarine |
	submarine := SubmarinePartOne new.
	self execute: (self parseInput: input) on: submarine.
	^ submarine positionMultiplied
]

{ #category : #computation }
AdventOfCode2021Day02 class >> partTwo: input [

	| submarine |
	submarine := SubmarinePartTwo new.
	self execute: (self parseInput: input) on: submarine.
	^ submarine positionMultiplied
]

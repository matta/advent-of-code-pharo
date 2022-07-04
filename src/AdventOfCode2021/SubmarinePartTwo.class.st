Class {
	#name : #SubmarinePartTwo,
	#superclass : #Object,
	#instVars : [
		'submarine',
		'aim'
	],
	#category : #'AdventOfCode2021-Day 02'
}

{ #category : #navigating }
SubmarinePartTwo >> down: value [

	aim := aim + value
]

{ #category : #navigating }
SubmarinePartTwo >> forward: value [

	submarine forward: value.
	submarine down: value * aim
]

{ #category : #initialization }
SubmarinePartTwo >> initialize [

	submarine := SubmarinePartOne new.
	aim := 0
]

{ #category : #'as yet unclassified' }
SubmarinePartTwo >> positionMultiplied [

	^ submarine positionMultiplied
]

{ #category : #navigating }
SubmarinePartTwo >> up: value [

	aim := aim - value

]

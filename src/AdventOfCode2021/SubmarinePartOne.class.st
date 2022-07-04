Class {
	#name : #SubmarinePartOne,
	#superclass : #Object,
	#instVars : [
		'position'
	],
	#category : #'AdventOfCode2021-Base'
}

{ #category : #'as yet unclassified' }
SubmarinePartOne >> down: anInteger [

	self moveBy: 0 @ anInteger
]

{ #category : #'as yet unclassified' }
SubmarinePartOne >> forward: anInteger [

	self moveBy: anInteger @ 0
]

{ #category : #initialization }
SubmarinePartOne >> initialize [
	position := 0@0
]

{ #category : #'as yet unclassified' }
SubmarinePartOne >> moveBy: delta [

	position := position translateBy: delta

]

{ #category : #'as yet unclassified' }
SubmarinePartOne >> position [

	^ position
]

{ #category : #'as yet unclassified' }
SubmarinePartOne >> positionMultiplied [

	^ (position x) * (position y)
]

{ #category : #'as yet unclassified' }
SubmarinePartOne >> up: anInteger [

	self moveBy: 0 @ (anInteger negated)
]

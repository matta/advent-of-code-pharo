"
I represent the soluton to Advent of Code 2021 Day One problem.

Test change 2
"
Class {
	#name : #AdventOfCode2021Day01,
	#superclass : #Object,
	#category : #'AdventOfCode2021-Day 01'
}

{ #category : #computation }
AdventOfCode2021Day01 class >> countAscendingElements: numbers [

	| count |
	count := 0.
	numbers overlappingPairsDo: [ :first :second | 
		first < second ifTrue: [ count := count + 1 ] ].
	^ count

]

{ #category : #computation }
AdventOfCode2021Day01 class >> parsedNumbers: aString [

	^ aString lines collect: #asInteger
]

{ #category : #computation }
AdventOfCode2021Day01 class >> partOne: aString [

	^ self countAscendingElements: (self parsedNumbers: aString)

]

{ #category : #computation }
AdventOfCode2021Day01 class >> partTwo: aString [

	| numbers windows |
	numbers := self parsedNumbers: aString.
	windows := OrderedCollection new.
	1 to: numbers size - 2 do: [ :i | 
		windows addLast:
			((numbers at: i) + (numbers at: i + 1) + (numbers at: i + 2)) ].
	^ self countAscendingElements: windows
]

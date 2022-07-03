"
I represent the soluton to Advent of Code 2021 Day One problem.

"
Class {
	#name : #AdventOfCodeDayOne2021,
	#superclass : #Object,
	#category : #'AdventOfCode2021-Base'
}

{ #category : #computation }
AdventOfCodeDayOne2021 class >> countAscendingElements: numbers [

	| count |
	count := 0.
	numbers overlappingPairsDo: [ :first :second | 
		first < second ifTrue: [ count := count + 1 ] ].
	^ count

]

{ #category : #computation }
AdventOfCodeDayOne2021 class >> parsedNumbers: aString [

	^ aString lines collect: #asInteger
]

{ #category : #computation }
AdventOfCodeDayOne2021 class >> partOne: aString [

	^ self countAscendingElements: (self parsedNumbers: aString)

]

Class {
	#name : #AdventOfCode2021Day03,
	#superclass : #Object,
	#instVars : [
		'report'
	],
	#category : #'AdventOfCode2021-Day 03'
}

{ #category : #parsing }
AdventOfCode2021Day03 >> booleansToInteger: booleans [

	| integer |
	integer := 0.
	booleans doWithIndex: [ :value :index |
		value ifTrue: [ 
			integer := integer | (1 << (index - 1)) ]
	].
	^ integer

]

{ #category : #parsing }
AdventOfCode2021Day03 >> countOnes: numbers [

	| anArray |
	anArray := #( 0 0 0 0 0 ) copy.
	numbers do: [ :number | 
		anArray withIndicesDo: [ :value :index | 
			(number bitAnd: (1 << (index - 1))) ~= 0 ifTrue: [ 
				anArray at: index put: value + 1 ] ] ].
	^ anArray
]

{ #category : #parsing }
AdventOfCode2021Day03 >> parse: aString [

	report := aString lines collect: [ :line | 
		          ('2r' , line reversed) asNumber ]
]

{ #category : #'as yet unclassified' }
AdventOfCode2021Day03 >> partOne: input [

	self parse: input
]

{ #category : #'as yet unclassified' }
AdventOfCode2021Day03 >> partOneRate: report [

	| ones threshold gamma epsilon |
	ones := self countOnes: report.
	threshold := (report size) / 2.
	gamma := ones collect: [ :count | count > threshold ].
	epsilon := gamma collect: [ :value | value not ].
	^ { gamma . epsilon }

]

Extension { #name : #AdventOfCodeDayOne2021 }

{ #category : #'*AdventOfCode2021-Tests' }
AdventOfCodeDayOne2021 class >> partTwo: aString [

	| numbers windows |
	numbers := self parsedNumbers: aString.
	windows := OrderedCollection new.
	1 to: numbers size - 2 do: [ :i | 
		windows addLast:
			((numbers at: i) + (numbers at: i + 1) + (numbers at: i + 2)) ].
	^ self countAscendingElements: windows
]

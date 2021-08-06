as yet unclassified
text: aStringOrObject

	(aStringOrObject isKindOf: String)
		ifTrue: [label contents: aStringOrObject]
		ifFalse: [label contents: 'LINK']
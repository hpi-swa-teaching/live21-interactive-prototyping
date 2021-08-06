as yet unclassified
text: aStringOrObject

	(aStringOrObject isKindOf: String)
		ifTrue: [button label: aStringOrObject]
		ifFalse: [button label: 'LINK'].
	text := aStringOrObject
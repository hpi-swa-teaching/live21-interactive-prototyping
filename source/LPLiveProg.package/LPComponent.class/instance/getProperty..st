as yet unclassified
getProperty: aString

	^ (self properties detect: [:p | p contents = aString]) binding
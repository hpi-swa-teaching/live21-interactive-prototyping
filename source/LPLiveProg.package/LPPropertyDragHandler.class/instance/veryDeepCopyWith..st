as yet unclassified
veryDeepCopyWith: deepCopier

	| oldElement copy |
	oldElement := element.
	element := nil.
	copy := super veryDeepCopyWith: deepCopier.
	element := oldElement.
	copy element: element.
	^ copy
as yet unclassified
elements: anObject

	elements removeAllMorphs.
	anObject submorphs veryDeepCopy do: [:e | elements addMorphBack: e]
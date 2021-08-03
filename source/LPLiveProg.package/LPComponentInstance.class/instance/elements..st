as yet unclassified
elements: anObject

	elements removeAllMorphs.
	anObject submorphs veryDeepCopy do: [:e | self elements addMorphBack: e]
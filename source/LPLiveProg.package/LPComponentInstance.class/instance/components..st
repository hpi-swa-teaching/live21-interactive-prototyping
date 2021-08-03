as yet unclassified
components: anObject

	components removeAllMorphs.
	anObject submorphs veryDeepCopy do: [:e | elements addMorphBack: e]
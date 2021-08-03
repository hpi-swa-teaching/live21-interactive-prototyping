as yet unclassified
addProperty: aString

	| newMorph |
	newMorph := (SBStName newWith: SBStDeclarationForLocalVariable new)
		contents: aString;
		autoCast: false.
	properties addMorphBack: newMorph.
	self width: self width + newMorph width
as yet unclassified
addProperty: aString

	| newMorph |
	newMorph := (LPProperty newWith: LPFieldDeclarationBehavior new)
		contents: aString;
		autoCast: false.
	properties addMorphBack: newMorph.
	self width: self width + newMorph width
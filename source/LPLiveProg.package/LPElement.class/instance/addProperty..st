as yet unclassified
addProperty: aString

	| newMorph |
	newMorph := (SBStName newWith: SBStDeclarationForLocalVariable new)
		contents: aString;
		autoCast: false.
	properties addMorphBack: newMorph.
	popup properties addMorphBack: newMorph
	"popup properties: properties does not work?"
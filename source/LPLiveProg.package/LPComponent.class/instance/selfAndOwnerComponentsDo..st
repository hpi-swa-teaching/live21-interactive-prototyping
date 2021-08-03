as yet unclassified
selfAndOwnerComponentsDo: aBlock

	| actualOwnerComponent |
	aBlock value: self.
	"next component is owner of an SBRow, which is an owner of an LPDeclarationArea, TODO: make it nicer?"
	"might BREAK, because owner could be a SELECTION"
	actualOwnerComponent := nil.
	self owner ifNotNil: [self owner owner ifNotNil: [actualOwnerComponent := self owner owner owner]].
	(actualOwnerComponent isKindOf: LPComponent) ifTrue: [actualOwnerComponent selfAndOwnerComponentsDo: aBlock]
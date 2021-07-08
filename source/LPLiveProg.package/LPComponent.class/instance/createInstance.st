as yet unclassified
createInstance

	| newInstance instanceProperties |
	"newWithProperties:andComponents:andElements:"
	instanceProperties := properties submorphs collect: [:property | property contents asSymbol].
	newInstance := LPComponentInstance new
		properties: instanceProperties;
		elements: elements;
		elementName: name.
	self outerMostComponent = self
		ifTrue: [self sandblockEditor openMorph: (newInstance topLeft: self topRight)]
		ifFalse: [self owner owner owner addElement: newInstance]
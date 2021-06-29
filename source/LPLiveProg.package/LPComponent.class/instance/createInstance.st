as yet unclassified
createInstance

	| newInstance instanceProperties |
	"newWithProperties:andComponents:andElements:"
	instanceProperties := properties submorphs collect: [:property | property contents asSymbol].
	newInstance := LPComponentInstance new
		properties: instanceProperties;
		elements: elements;
		components: components.
	self sandblockEditor openMorph: (newInstance topLeft: self topRight)
as yet unclassified
newInstance

	| instanceProperties newInstance |
	instanceProperties := properties submorphs collect: [:property | property contents asSymbol].
	newInstance := LPComponentInstance new
		properties: instanceProperties;
		elements: elements;
		elementName: name;
		id: id.
	^ newInstance
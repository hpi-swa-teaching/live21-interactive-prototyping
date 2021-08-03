as yet unclassified
newInstance

	| instanceProperties |
	instanceProperties := properties submorphs collect: [:property | property contents asSymbol].
	^ LPComponentInstance new
		properties: instanceProperties;
		elements: elements;
		elementName: name;
		id: id
as yet unclassified
newInstance

	| instanceProperties newInstance |
	instanceProperties := self properties collect: [:property | property contents asSymbol].
	newInstance := LPComponentInstance new
		properties: instanceProperties;
		elements: elements;
		elementName: name;
		id: id.
	self properties do: [:property | newInstance setProperty: property contents asSymbol to: property binding].
	^ newInstance
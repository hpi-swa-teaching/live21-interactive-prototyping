as yet unclassified
wasSelected

	(popup isNil or: [popup isInWorld not]) ifTrue: [
		popup := LPPopup new parent: self.
		(self properties notNil and: self properties notEmpty) ifTrue: [
			self properties do: [:property | | text |
				text := LPPropertyValue new
					property: property;
					element: self.
				popup addMorphFront: (SBRow new
					addMorphBack: (SBStringMorph new contents: property, ': ');
					addMorphBack: (text
						contents: (self getProperty: property) storeString;
						when: #stopEditing send: #updateProperty:from: to: self withArguments: {property. text}))].
			popup fullBounds.
			self sandblockEditor ifNotNil: [self sandblockEditor openMorph: (popup bottomLeft: self topLeft)]]]
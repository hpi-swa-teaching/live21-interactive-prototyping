as yet unclassified
wasSelected

	(popup isNil or: [popup isInWorld not]) ifTrue: [
		popup := LPPopup new component: self.
		self sandblockEditor openMorph: (popup bottomLeft: self topLeft).
		self properties do: [:property | | text |
			text := SBTextBubble new.
			popup addMorphFront: (SBRow new
				addMorphBack: (SBStringMorph new contents: property, ': ');
				addMorphBack: (text
					contents: (self perform: property) storeString;
					when: #stopEditing send: #updateProperty:from: to: self withArguments: {property. text}))]]
as yet unclassified
wasSelected

	(popup isNil or: [popup isInWorld not]) ifTrue: [ | text |
		text := LPPropertyValue new contents: self binding.
		popup := LPPopup new parent: self.
		popup addMorphFront: (text
			element: self;
			when: #stopEditing send: #updateFrom: to: self withArguments: {text}).
		popup fullBounds.
		self sandblockEditor ifNotNil: [self sandblockEditor openMorph: (popup bottomLeft: self topLeft)]]
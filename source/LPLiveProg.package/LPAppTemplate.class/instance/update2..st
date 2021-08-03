as yet unclassified
update2: s1
	" alternative manner of updating that duplicates component declarations "

	^ self
		buildComponent: #DiceRoller
		state: s1
		setState: [:s2 |
			s2
				at: #selectedDice
					ifAbsentPut: [{4 -> 0. 6 -> 0. 8 -> 0. 10 -> 0. 12 -> 0. 100 -> 0} as: OrderedDictionary];
				at: #modifierSum ifAbsentPut: [0];
				at: #previous ifAbsentPut: [OrderedCollection new];
				at: #result ifAbsentPut: ['']]
		createDeclarations: [:s2 |
			s2 at: #sideEffect54231 put: [
				s2 at: #modifierSum put: (s2 at: #modifierSum) + 1.
				self rebuild].
			s2 at: #sideEffect52331 put: [
				(s2 at: #selectedDice) at: 4 put: ((s2 at: #selectedDice) at: 4) + 1.
				self rebuild].
			s2 at: #DiceButton put: [:s3 |
				{
					SBButton new
						onClick: (s3 at: #onSelect);
						label: (s3 at: #count) asString}].
			s2
				at: #rollString
				put: ((s2 at: #selectedDice) values joinSeparatedBy: ','), ('+', (s2 at: #modifierSum) asString)]
		createView: [:s2 |
			{
				self
					buildComponent: #Die4
					state: s2
					setState: [:s3 |
						s3
							at: #count put: ((s3 at: #selectedDice) at: 4);
							at: #faces ifAbsentPut: [4];
							at: #clickCount ifAbsentPut: [0];
							at: #onSelect put: (s3 at: #sideEffect52331)]
					createDeclarations: [:s3 | ]
					createView: [:s3 |
						{
							SBButton new
								onClick: (s3 at: #onSelect);
								label: (s3 at: #count) asString}].
				self
					buildComponent: #AddModifier
					state: s2
					setState: [:s3 | s3 at: #onSelect put: (s2 at: #sideEffect54231)]
					createDeclarations: [:s3 | ]
					createView: [:s3 |
						{
							SBButton new
								onClick: (s3 at: #onSelect);
								label: 'Incr Mod'}].
				SBStringMorph new contents: 'Result:'.
				SBStringMorph new contents: (s2 at: #rollString)}]
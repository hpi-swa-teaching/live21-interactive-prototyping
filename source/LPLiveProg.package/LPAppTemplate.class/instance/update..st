as yet unclassified
update: s1

	^ self
		instanceComponent: (LPComponentTemplate new
			declarations: [:s |
				s at: #modifierSelectSideEffect put: [
					s at: #modifierSum put: (s at: #modifierSum) + 1.
					self rebuild].
				s at: #die put: (LPComponentTemplate new
					view: [:s2 |
						{
							SBButton new
								onClick: (s2 at: #selectSideEffect);
								label: (s2 at: #label)}];
					declarations: [:s2 |
						s2 at: #selectSideEffect put: [
							(s2 at: #selectedDice)
								at: (s2 at: #faces)
								put: ((s2 at: #selectedDice) at: (s2 at: #faces)) + 1.
							self rebuild]];
					selectors: [:s2 |
						s2 at: #count put: ((s2 at: #selectedDice) at: (s2 at: #faces)).
						s2 at: #label put: ('d{1} ({2})' format: {s2 at: #faces. s2 at: #count})];
					properties: {#faces};
					yourself).
				s at: #mod put: (LPComponentTemplate new
					view: [:s2 |
						{
							SBButton new
								onClick: (s2 at: #onSelect);
								label: 'Incr Mod'}];
					declarations: [:s2 | ];
					selectors: [:s2 | ];
					properties: {#onSelect};
					yourself)];
			selectors: [:s |
				s
					at: #rollString
					put: ((s at: #selectedDice) values joinSeparatedBy: ','), ('+', (s at: #modifierSum) asString)];
			properties: {#selectedDice. #modifierSum. #previous. #result};
			view: [:s |
				{
					self instanceComponent: (s at: #die) from: s id: #asd1 with: [:s2 | s2 at: #faces put: 4].
					self instanceComponent: (s at: #die) from: s id: #asd4 with: [:s2 | s2 at: #faces put: 6].
					self instanceComponent: (s at: #die) from: s id: #asd5 with: [:s2 | s2 at: #faces put: 8].
					self instanceComponent: (s at: #die) from: s id: #asd6 with: [:s2 | s2 at: #faces put: 10].
					self
						instanceComponent: (s at: #mod)
						from: s
						id: #asd3
						with: [:s2 | s2 at: #onSelect put: (s at: #modifierSelectSideEffect)].
					SBStringMorph new contents: 'Result:'.
					SBStringMorph new contents: (s at: #rollString)}];
			yourself)
		from: s1
		id: #asdasd2
		with: [:s |
			s
				at: #selectedDice
					ifAbsentPut: [{4 -> 0. 6 -> 0. 8 -> 0. 10 -> 0. 12 -> 0. 100 -> 0} as: OrderedDictionary];
				at: #modifierSum ifAbsentPut: [0];
				at: #previous ifAbsentPut: [OrderedCollection new];
				at: #result ifAbsentPut: ['']]
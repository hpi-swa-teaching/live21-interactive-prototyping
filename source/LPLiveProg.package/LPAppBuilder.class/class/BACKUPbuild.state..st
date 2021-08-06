as yet unclassified
BACKUPbuild: currentView state: currentState

	| s1 build rebuild view selector |
	" boilerplate "
	s1 := currentState ifNil: [LPState new].
	view := currentView.
	selector := thisContext selector.
	rebuild := [view replaceBy: (view := self perform: selector withArguments: {view. s1})].
	
	currentView ifNil: [
		(SystemChangeNotifier uniqueInstance instVarNamed: #eventSource)
			when: 'methodModifiedEvent:'
			evaluate: [:a |
				(a item isCompiledMethod and: [a item selector = selector and: [a item methodClass = self class]]) ifTrue: [
					SBToggledCode
						comment: ''
						active: 1
						do: {[rebuild value]. [self perform: selector withArguments: {view. s1}]}]]].
	
	" this needs to be generated for each component instance "
	build := [
		LPAppBuilder
			instanceComponent: (LPComponentTemplate new
				declarations: [:s2 |
					s2 at: #modifierSelectSideEffect put: [
						s2 at: #modifierSum put: (s2 at: #modifierSum) + 1.
						rebuild value].
					s2 at: #die put: (LPComponentTemplate new
						view: [:s3 |
							{
								SBButton new
									onClick: (s3 at: #selectSideEffect);
									label: (s3 at: #label)}];
						declarations: [:s3 |
							s3 at: #selectSideEffect put: [
								(s3 at: #selectedDice)
									at: (s3 at: #faces)
									put: ((s3 at: #selectedDice) at: (s3 at: #faces)) + 1.
								rebuild value]];
						selectors: [:s3 |
							s3 at: #count put: ((s3 at: #selectedDice) at: (s3 at: #faces)).
							s3 at: #label put: ('d{1} ({2})' format: {s3 at: #faces. s3 at: #count})];
						properties: {#faces};
						yourself).
					s2 at: #mod put: (LPComponentTemplate new
						view: [:s3 |
							{
								SBButton new
									onClick: (s3 at: #onSelect);
									label: 'Incr Mod'}];
						declarations: [:s3 | ];
						selectors: [:s3 | ];
						properties: {#onSelect};
						yourself)];
				selectors: [:s2 |
					s2
						at: #rollString
						put: ((s2 at: #selectedDice) values joinSeparatedBy: ','), ('+', (s2 at: #modifierSum) asString)];
				properties: {#selectedDice. #modifierSum. #previous. #result};
				view: [:s2 |
					{
						LPAppBuilder
							instanceComponent: (s2 at: #die)
							from: s2
							id: #asd1
							with: [:s3 | s3 at: #faces put: 4].
						LPAppBuilder
							instanceComponent: (s2 at: #die)
							from: s2
							id: #asd4
							with: [:s3 | s3 at: #faces put: 6].
						LPAppBuilder
							instanceComponent: (s2 at: #die)
							from: s2
							id: #asd5
							with: [:s3 | s3 at: #faces put: 8].
						LPAppBuilder
							instanceComponent: (s2 at: #die)
							from: s2
							id: #asd6
							with: [:s3 | s3 at: #faces put: 10].
						LPAppBuilder
							instanceComponent: (s2 at: #mod)
							from: s2
							id: #asd3
							with: [:s3 | s3 at: #onSelect put: (s3 at: #modifierSelectSideEffect)].
						SBStringMorph new contents: 'Result:'.
						SBStringMorph new contents: (s2 at: #rollString)}];
				yourself)
			from: s1
			id: #asdasd2
			with: [:s2 |
				s2
					at: #selectedDice
						ifAbsentPut: [{4 -> 0. 6 -> 0. 8 -> 0. 10 -> 0. 12 -> 0. 100 -> 0} as: OrderedDictionary];
					at: #modifierSum ifAbsentPut: [0];
					at: #previous ifAbsentPut: [OrderedCollection new];
					at: #result ifAbsentPut: ['']]].
	
	" kick-off the build process "
	^ (view := build value) openInHand
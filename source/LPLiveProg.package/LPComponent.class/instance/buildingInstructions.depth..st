as yet unclassified
buildingInstructions: aBuilder depth: aNumber

	^ aBuilder to: (aBuilder to: (aBuilder name: 'LPComponentTemplate') send: #new) cascade: {
		aBuilder cascadedSend: #declarations: with: (aBuilder blockWith: {'s', aNumber} do: (self sideEffects collect: [:sideEffect | | actual marked |
			actual := sideEffect veryDeepCopy.
			marked := Array streamContents: [:stream | actual allBlocksDo: [:block | (block isBinding and: [block resolveBinding isNil]) ifTrue: [stream nextPut: block]]].
			marked do: [:block |
				(block parentSandblock notNil and: [block parentSandblock isAssignment and: [block = block parentSandblock receiver]])
					ifTrue: [
						block parentSandblock replaceBy: [:b |
							b
								to: (b name: 's', aNumber)
								send: #at:put:
								with: {b symbol: block contents. block parentSandblock expression}] sbStBuild]
					ifFalse: [block replaceBy: [:b | b to: (b name: 's', aNumber) send: #at: with: (b symbol: block contents)] sbStBuild]].
			aBuilder to: (aBuilder name: 's', aNumber) send: #at:put: with: {
				aBuilder symbol: actual id.
				aBuilder
					blockWith: {}
					do: actual body statements veryDeepCopy, {aBuilder to: (aBuilder name: 'rebuild') send: #value}}]), (self components collect: [:component |
			aBuilder
				to: (aBuilder name: 's', aNumber)
				send: #at:put:
				with: {aBuilder symbol: component id. component buildingInstructions: aBuilder depth: aNumber + 1}])).
		aBuilder cascadedSend: #selectors: with: (aBuilder blockWith: {'s', aNumber} do: (self selectors collect: [:selector | | actual marked |
			actual := selector veryDeepCopy.
			marked := Array streamContents: [:stream | actual allBlocksDo: [:block | (block isBinding and: [block resolveBinding isNil]) ifTrue: [stream nextPut: block]]].
			marked do: [:block |
				(block parentSandblock notNil and: [block parentSandblock isAssignment and: [block = block parentSandblock receiver]])
					ifTrue: [
						block parentSandblock replaceBy: [:b |
							b
								to: (b name: 's', aNumber)
								send: #at:put:
								with: {b symbol: block contents. block parentSandblock expression}] sbStBuild]
					ifFalse: [block replaceBy: [:b | b to: (b name: 's', aNumber) send: #at: with: (b symbol: block contents)] sbStBuild]].
			aBuilder
				to: (aBuilder name: 's', aNumber)
				send: #at:put:
				with: {aBuilder symbol: actual id. aBuilder blockWith: {} do: actual body statements veryDeepCopy}])).
		aBuilder
			cascadedSend: #properties:
			with: (aBuilder array: (self properties collect: [:prop | aBuilder symbol: prop contents])).
		aBuilder cascadedSend: #view: with: (aBuilder blockWith: {'s', aNumber} do: {
			aBuilder array: ((elements childSandblocks reject: [:child | child class = SBBlock]) collect: [:element | element asExecutableBlock: aBuilder depth: aNumber])}).
		aBuilder cascadedSend: #yourself}
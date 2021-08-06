as yet unclassified
buildingInstructions: aBuilder depth: aNumber

	| sideEffects components selectors |
	"TODO: make these getters"
	sideEffects := declarations submorphs select: [:d | d isKindOf: LPSideEffect].
	components := declarations submorphs select: [:d | d isKindOf: LPComponent].
	selectors := declarations submorphs select: [:d | d isKindOf: LPSelector].
	^ aBuilder to: (aBuilder to: (aBuilder name: 'LPComponentTemplate') send: #new) cascade: {
		aBuilder cascadedSend: #declarations: with: (aBuilder blockWith: {'s', aNumber} do: (sideEffects collect: [:sideEffect | | actual |
			actual := sideEffect veryDeepCopy.
			actual allBlocksDo: [:block |
				(block isBinding and: [block resolveBinding isNil]) ifTrue: [
					(block parentSandblock notNil and: [block parentSandblock isAssignment and: [block = block parentSandblock binding]])
						ifTrue: [
							block parentSandblock replaceBy: [:b |
								b
									to: (b name: 's', aNumber)
									send: #at:put:
									with: {b symbol: block contents. block parentSandblock expression}] sbStBuild]
						ifFalse: [block replaceBy: [:b | b to: (b name: 's', aNumber) send: #at: with: (b symbol: block contents)] sbStBuild]]].
			aBuilder to: (aBuilder name: 's', aNumber) send: #at:put: with: {
				aBuilder symbol: actual id.
				aBuilder
					blockWith: {}
					do: actual body statements veryDeepCopy, {aBuilder to: (aBuilder name: 'rebuild') send: #value}}]), (components collect: [:component |
			aBuilder
				to: (aBuilder name: 's', aNumber)
				send: #at:put:
				with: {aBuilder symbol: component id. component buildingInstructions: aBuilder depth: aNumber + 1}])).
		aBuilder cascadedSend: #selectors: with: (aBuilder blockWith: {'s', aNumber} do: (selectors collect: [:decl |
			(decl isKindOf: LPSelector) ifTrue: (aBuilder to: (aBuilder name: 's', aNumber) send: #at:put: with: {
				aBuilder symbol: UUID new asString asSymbol.
				aBuilder blockWith: {} do: {aBuilder string: decl sourceString}})])).
		aBuilder
			cascadedSend: #properties:
			with: (aBuilder array: (self properties collect: [:prop | aBuilder symbol: prop contents])).
		aBuilder cascadedSend: #view: with: (aBuilder
			blockWith: {'s', aNumber}
			do: ((elements childSandblocks reject: [:child | child class = SBBlock]) collect: [:element | element asExecutableBlock: aBuilder depth: aNumber])).
		aBuilder cascadedSend: #yourself}
as yet unclassified
buildingInstructions: aBuilder depth: aNumber

	| sideEffects components selectors |
	"TODO: make these getters"
	sideEffects := declarations submorphs reject: [:d | (d isKindOf: LPSideEffect) not].
	components := declarations submorphs reject: [:d | (d isKindOf: LPComponent) not].
	selectors := declarations submorphs reject: [:d | (d isKindOf: LPSelector) not].
	^ aBuilder to: (aBuilder to: (aBuilder name: 'LPComponentTemplate') send: #new) cascade: {
		aBuilder cascadedSend: #declarations: with: (aBuilder blockWith: {'s', aNumber} do: (sideEffects collect: [:sideEffect |
			aBuilder to: (aBuilder name: 's', aNumber) send: #at:put: with: {
				aBuilder symbol: sideEffect id.
				aBuilder
					blockWith: {}
					do: sideEffect body statements veryDeepCopy, {aBuilder to: (aBuilder name: 'rebuild') send: #value}}]), (components collect: [:component |
			aBuilder
				to: (aBuilder name: 's', aNumber)
				send: #at:put:
				with: {aBuilder symbol: component id. component buildingInstructions: aBuilder depth: aNumber + 1}])).
		aBuilder cascadedSend: #selectors: with: (aBuilder blockWith: {'s', aNumber} do: (selectors collect: [:decl |
			(decl isKindOf: LPSelector) ifTrue: (aBuilder to: (aBuilder name: 's', aNumber) send: #at:put: with: {
				aBuilder symbol: UUID new asString asSymbol.
				aBuilder blockWith: {} do: {aBuilder string: decl sourceString}})])).
		aBuilder cascadedSend: #properties: with: (aBuilder array: (self properties collect: [:prop |
			prop
			"prop contents asSymbol"])).
		aBuilder cascadedSend: #view: with: (aBuilder blockWith: {'s', aNumber} do: ((elements childSandblocks reject: [:child | child class = SBBlock]) collect: [:element | "TODO: wie wird ein Sideeffect gesetzt?"
		"TODO: fix LPComponentInstance asExecutableBlock"
		element asExecutableBlock])).
		aBuilder cascadedSend: #yourself}
as yet unclassified
asExecutableBlock

	| sideEffects components selectors |
	sideEffects := declarations submorphs reject: [:d | (d isKindOf: LPSideEffect) not].
	components := declarations submorphs reject: [:d | (d isKindOf: LPComponent) not].
	selectors := declarations submorphs reject: [:d | (d isKindOf: LPSelector) not].
	^ [:b |
		b to: (b name: 'LPAppBuilder') send: #instanceComponent:from:id:with: with: {
			self buildingInstructions: b depth: 2.
			b name: 's1'.
			b symbol: UUID new asString asSymbol.
			b blockWith: {'s2'} do: {
				b to: (b name: 's2') cascade: (self properties collect: [:prop |
					b
						cascadedSend: #at:ifAbsentPut:
						with: {b symbol: prop contents asSymbol. b blockWith: {} do: {b name: 'nil'}}])}}] sbStBuild
as yet unclassified
asExecutableBlock

	| sideEffects components selectors |
	sideEffects := declarations submorphs select: [:d | d isKindOf: LPSideEffect].
	components := declarations submorphs select: [:d | d isKindOf: LPComponent].
	selectors := declarations submorphs select: [:d | d isKindOf: LPSelector].
	^ [:b |
		b method: #build:state: in: LPAppBuilder class with: {b name: 'rebuild'. b name: 's1'} do: {
			b return: (b to: (b name: 'LPAppBuilder') send: #instanceComponent:from:id:with: with: {
				self buildingInstructions: b depth: 2.
				b name: 's1'.
				b symbol: UUID new asString asSymbol.
				b blockWith: {'s2'} do: {
					b to: (b name: 's2') cascade: (self properties collect: [:prop |
						b
							cascadedSend: #at:ifAbsentPut:
							with: {b symbol: prop contents asSymbol. b blockWith: {} do: {b string: prop binding asString}}])}})}] sbStSave
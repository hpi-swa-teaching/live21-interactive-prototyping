as yet unclassified
asExecutableBlock

	| sideEffects components selectors |
	sideEffects := declarations submorphs select: [:d | d isKindOf: LPSideEffect].
	components := declarations submorphs select: [:d | d isKindOf: LPComponent].
	selectors := declarations submorphs select: [:d | d isKindOf: LPSelector].
	^ [:b | | method |
		method := b method: #code in: LPAppBuilder do: {
			b assign: 's1' to: (b to: (b name: 'LPState') send: #new).
			b assign: 'view' to: (b name: 'nil').
			b assign: 'rebuild' to: (b blockWith: {} do: {
				b
					to: (b name: 'view')
					send: #replaceBy:
					with: {b assign: 'view' to: (b to: (b name: 'build') send: #value)}}).
			b assign: 'build' to: (b blockWith: {} do: {
				b to: (b name: 'LPAppBuilder') send: #instanceComponent:from:id:with: with: {
					self buildingInstructions: b depth: 2.
					b name: 's1'.
					b symbol: UUID new asString asSymbol.
					b blockWith: {'s2'} do: {
						b to: (b name: 's2') cascade: (self properties collect: [:prop |
							b
								cascadedSend: #at:ifAbsentPut:
								with: {b symbol: prop contents asSymbol. b blockWith: {} do: {b name: prop binding}}])}}}).
			b assign: 'view' to: (b to: (b name: 'build') send: #value).
			b return: (b to: (b name: 'view') send: #openInHand)}.
		method body temporaries: {b name: 's1'. b name: 'build'. b name: 'rebuild'. b name: 'view'}.
		method] sbStSave
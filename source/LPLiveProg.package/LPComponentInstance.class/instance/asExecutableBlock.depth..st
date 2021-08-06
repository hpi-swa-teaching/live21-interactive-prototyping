as yet unclassified
asExecutableBlock: aBuilder depth: aNumber

	| subState state |
	state := 's', aNumber.
	subState := 's', (aNumber + 1).
	^ aBuilder to: (aBuilder name: 'LPAppBuilder') send: #instanceComponent:from:id:with: with: {
		aBuilder to: (aBuilder name: state) send: #at: with: (aBuilder symbol: id).
		aBuilder name: state.
		aBuilder symbol: UUID new.
		aBuilder blockWith: {subState} do: (self properties collect: [:prop | | value |
			value := self getProperty: prop contents asSymbol.
			(value isKindOf: LPCode)
				ifFalse: [
					aBuilder
						to: (aBuilder name: subState)
						send: #at:ifAbsentPut:
						with: {aBuilder symbol: prop contents. value asString parseAsSandblock}]
				ifTrue: [
					aBuilder to: (aBuilder name: subState) send: #at:ifAbsentPut: with: {
						aBuilder symbol: prop contents.
						aBuilder to: (aBuilder name: state) send: #at: with: (aBuilder symbol: value id)}]])}
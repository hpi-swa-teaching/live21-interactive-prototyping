as yet unclassified
asExecutableBlock: aBuilder depth: aNumber

	^ aBuilder to: (aBuilder to: (aBuilder name: 'SBButton') send: #new) cascade: {
		((self getProperty: #text) isKindOf: LPCode)
			ifFalse: [aBuilder cascadedSend: #label: with: (aBuilder string: self text)]
			ifTrue: [
				aBuilder cascadedSend: #label: with: (aBuilder
					to: (aBuilder
						to: (aBuilder name: 's', aNumber)
						send: #at:
						with: {aBuilder symbol: (self getProperty: #text) id})
					send: #value)].
		self onClick
			ifNotNil: [
				aBuilder
					cascadedSend: #onClick:
					with: (aBuilder to: (aBuilder name: 's', aNumber) send: #at: with: (aBuilder symbol: self onClick id))]
			ifNil: [aBuilder cascadedSend: #onClick: with: (aBuilder blockWith: {} do: {})]}
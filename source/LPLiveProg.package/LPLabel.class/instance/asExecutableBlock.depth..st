as yet unclassified
asExecutableBlock: aBuilder depth: aNumber

	^ aBuilder to: (aBuilder to: (aBuilder name: 'SBStringMorph') send: #new) cascade: {
		((self getProperty: #text) isKindOf: LPCode)
			ifFalse: [aBuilder cascadedSend: #contents: with: (aBuilder string: self text)]
			ifTrue: [
				aBuilder cascadedSend: #contents: with: (aBuilder
					to: (aBuilder
						to: (aBuilder name: 's', aNumber)
						send: #at:
						with: {aBuilder symbol: (self getProperty: #text) id})
					send: #value)]}
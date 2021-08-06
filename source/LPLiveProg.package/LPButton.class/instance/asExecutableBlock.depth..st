as yet unclassified
asExecutableBlock: aBuilder depth: aNumber

	^ aBuilder to: (aBuilder to: (aBuilder name: 'SBButton') send: #new) cascade: {
		aBuilder cascadedSend: #label: with: (aBuilder string: self text).
		self onClick
			ifNotNil: [
				aBuilder
					cascadedSend: #onClick:
					with: (aBuilder to: (aBuilder name: 's', aNumber) send: #at: with: (aBuilder symbol: self onClick id))]
			ifNil: [aBuilder cascadedSend: #onClick: with: (aBuilder blockWith: {} do: {})]}
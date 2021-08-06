as yet unclassified
asExecutableBlock: aBuilder depth: aNumber

	^ aBuilder
		to: (aBuilder to: (aBuilder name: 'SBStringMorph') send: #new)
		cascade: {aBuilder cascadedSend: #contents: with: (aBuilder string: self text)}
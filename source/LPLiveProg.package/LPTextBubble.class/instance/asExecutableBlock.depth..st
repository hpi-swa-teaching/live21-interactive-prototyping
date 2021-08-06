as yet unclassified
asExecutableBlock: aBuilder depth: aNumber

	^ aBuilder
		to: (aBuilder to: (aBuilder name: 'SBTextBubble') send: #new)
		cascade: {aBuilder cascadedSend: #contents: with: (aBuilder string: self text)}
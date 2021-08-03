as yet unclassified
asExecutableBlock

	^ [:b |
		b
			to: (b to: (b name: 'SBTextBubble') send: #new)
			cascade: {b cascadedSend: #contents: with: (b string: self text)}] sbStBuild
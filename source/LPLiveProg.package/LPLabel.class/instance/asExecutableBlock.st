as yet unclassified
asExecutableBlock

	^ [:b |
		b
			to: (b to: (b name: 'SBStringMorph') send: #new)
			cascade: {b cascadedSend: #contents: with: (b string: self text)}] sbStBuild
as yet unclassified
asExecutableBlock

	^ [:b |
		b
			to: (b to: (b name: 'SBButton') send: #new)
			cascade: {b cascadedSend: #label: with: (b string: self text)}] sbStBuild
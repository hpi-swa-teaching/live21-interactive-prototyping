as yet unclassified
asExecutableBlock

	^ [:b |
		b
			to: (b to: (b name: 'SBColumn') send: #new)
			cascade: ((self childSandblocks reject: [:child | child class = SBBlock]) collect: [:child | b cascadedSend: #addMorphBack: with: child asExecutableBlock])] sbStBuild
as yet unclassified
asExecutableBlock: aBuilder depth: aNumber

	^ aBuilder
		to: (aBuilder to: (aBuilder name: 'SBColumn') send: #new)
		cascade: ((self childSandblocks reject: [:child | child class = SBBlock]) collect: [:child | aBuilder cascadedSend: #addMorphBack: with: child asExecutableBlock])
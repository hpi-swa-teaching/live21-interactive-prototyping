as yet unclassified
asExecutableBlock: aBuilder depth: aNumber

	| children |
	children := self childSandblocks reject: [:child | child class = SBBlock].
	^ aBuilder
		to: (aBuilder to: (aBuilder name: 'SBRow') send: #new)
		cascade: (children collect: [:child | aBuilder cascadedSend: #addMorphBack: with: child asExecutableBlock])
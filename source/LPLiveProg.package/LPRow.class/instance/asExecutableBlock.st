as yet unclassified
asExecutableBlock

	^ [:b | | children |
		children := self childSandblocks reject: [:child | child class = SBBlock].
		b
			to: (b to: (b name: 'SBRow') send: #new)
			cascade: (children collect: [:child | b cascadedSend: #addMorphBack: with: child asExecutableBlock])] sbStBuild
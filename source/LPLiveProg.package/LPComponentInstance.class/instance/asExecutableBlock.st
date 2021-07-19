as yet unclassified
asExecutableBlock

	^ [:b |
		b to: (b to: (b name: 'SBBlock') send: #new) cascade: {
			b cascadedSend: #changeTableLayout.
			b cascadedSend: #hResizing: with: (b symbol: #shrinkWrap).
			b cascadedSend: #vResizing: with: (b symbol: #shrinkWrap).
			b cascadedSend: #addMorphBack: with: (b to: (b to: (b name: 'SBColumn') send: #new) cascade: {
				b cascadedSend: #hResizing: with: (b symbol: #shrinkWrap).
				b cascadedSend: #vResizing: with: (b symbol: #shrinkWrap)}, ((elements childSandblocks reject: [:child | child class = SBBlock]) collect: [:child | b cascadedSend: #addMorphBack: with: child asExecutableBlock]))}] sbStBuild
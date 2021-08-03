as yet unclassified
updateProperty: aSymbol from: aTextBubble

	self setProperty: aSymbol to: (Compiler evaluate: aTextBubble contents)
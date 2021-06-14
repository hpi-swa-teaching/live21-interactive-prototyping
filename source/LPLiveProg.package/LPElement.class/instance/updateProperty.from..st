as yet unclassified
updateProperty: aSymbol from: aTextBubble

	self perform: aSymbol asSimpleSetter with: (Compiler evaluate: aTextBubble contents)
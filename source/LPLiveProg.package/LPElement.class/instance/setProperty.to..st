as yet unclassified
setProperty: aNameSymbol to: anObject

	popup delete.
	popup := nil.
	self perform: aNameSymbol asSimpleSetter with: anObject.
	self wasSelected
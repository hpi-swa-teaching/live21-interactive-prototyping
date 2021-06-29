as yet unclassified
insertCommandRequest: aMorph near: aBlock before: aBoolean
	" the user tries to add a block to us, do we want to do something now? "

	^ SBRelInsertCommand new
		near: aBlock before: aBoolean in: self morph: aMorph;
		yourself
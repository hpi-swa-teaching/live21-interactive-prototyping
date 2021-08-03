as yet unclassified
childAt: anIdSymbol orCreatedDo: aBlock

	^ children at: anIdSymbol ifAbsentPut: [ | s |
		s := LPState new
			parent: self;
			yourself.
		aBlock value: s.
		s]
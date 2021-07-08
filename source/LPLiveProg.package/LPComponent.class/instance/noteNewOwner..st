as yet unclassified
noteNewOwner: aMorph

	super noteNewOwner: aMorph.
	launchOrCreateButton label: (self outerMostComponent = self ifTrue: ['launch'] ifFalse: ['create'])
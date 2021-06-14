as yet unclassified
initialize

	super initialize.
	LPElement subclassesDo: [:c | self addMorphBack: c buildDefault]
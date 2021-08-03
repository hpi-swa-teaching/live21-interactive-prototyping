as yet unclassified
update

	self removeAllMorphs.
	self addMorph: (listenFor methodClass theNonMetaClass
		perform: listenFor selector
		withArguments: {[self update]. state ifNil: [state := LPState new]})
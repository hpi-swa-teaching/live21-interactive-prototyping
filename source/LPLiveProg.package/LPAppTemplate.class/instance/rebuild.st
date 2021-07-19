as yet unclassified
rebuild

	| oldView |
	oldView := view.
	view := self update: state.
	oldView ifNotNil: [oldView replaceBy: view] ifNil: [view openInHand]
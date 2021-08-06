as yet unclassified
code

	| s1 build rebuild view |
	s1 := LPState new.
	view := nil.
	rebuild := [view replaceBy: (view := build value)].
	build := [
		LPAppBuilder
			instanceComponent: (LPComponentTemplate new
				declarations: [:s2 | ];
				selectors: [:s2 | ];
				properties: {#count};
				view: [:s2 | ];
				yourself)
			from: s1
			id: #'6c4ff553-d62e-463d-8e1d-3c9a5dd7a838'
			with: [:s2 | s2 at: #count ifAbsentPut: [nil]]].
	view := build value.
	^ view openInHand
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
			id: #'9d6e8c90-b621-4c8c-b195-2c6b71cdb6dc'
			with: [:s2 | s2 at: #count ifAbsentPut: [nil]]].
	view := build value.
	^ view openInHand
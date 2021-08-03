as yet unclassified
wasSelected

	SBToggledCode comment: '' active: 0 do: {[self addMorphFront: RectangleMorph new]}.
	popup := RectangleMorph new color: (Color r: 0.34 g: 0.077 b: 0.433).
	popup openInWorld.
	popup position: self positionInWorld - (0 @ popup height)
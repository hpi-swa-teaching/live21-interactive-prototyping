as yet unclassified
wasDeselected

	(popup isSelected or: [(self sandblockEditor ifNotNil: [:e | e selection ifNotNil: [:s | s hasOwner: popup]]) ifNil: [false]]) ifFalse: [
		popup delete.
		popup := nil]
as yet unclassified
wasDeselected

	(parent isSelected or: [(self sandblockEditor ifNotNil: [:e | e selection ifNotNil: [:s | s hasOwner: self]]) ifNil: [false]]) ifFalse: [self delete]
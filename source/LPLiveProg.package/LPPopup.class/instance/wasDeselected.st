as yet unclassified
wasDeselected

	(component isSelected or: [(self sandblockEditor ifNotNil: [:e | e selection ifNotNil: [:s | s hasOwner: self]]) ifNil: [false]]) ifFalse: [self delete]
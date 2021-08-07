as yet unclassified
saveTryFixing: aFixBoolean quick: aQuickBoolean

	self sandblockEditor rebuildPalette.
	" check if we're root "
	(self parentSandblock isKindOf: LPComponent) ifFalse: [self asExecutableBlock].
	^ true
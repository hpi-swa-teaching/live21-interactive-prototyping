as yet unclassified
objectInterfaceNear: aBlock at: aSymbol

	^ {[:o | (o isKindOf: LPComponent) or: [o isKindOf: LPSideEffect]]}
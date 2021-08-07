as yet unclassified
veryDeepCopyWith: aCopier

	| copy |
	copy := super veryDeepCopyWith: aCopier.
	copy myId: UUID new asString.
	^ copy
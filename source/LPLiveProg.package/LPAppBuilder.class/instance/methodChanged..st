as yet unclassified
methodChanged: anEvent

	(anEvent item selector = listenFor selector and: [anEvent item methodClass = listenFor methodClass]) ifTrue: [self update]
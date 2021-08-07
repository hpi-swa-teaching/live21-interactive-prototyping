as yet unclassified
binding: aString for: block class: aClass ifPresent: aBlock

	self containingArtefact ifNotNil: [
		self containingArtefact selfAndOwnerComponentsDo: [:component |
			component properties
				detect: [:b | b contents = aString]
				ifFound: [:v | ^ aBlock value: v]]].
	^ super binding: aString for: block class: aClass ifPresent: aBlock
as yet unclassified
binding: aString for: block class: aClass ifPresent: aBlock

	properties submorphs
		detect: [:name | name contents = aString]
		ifFound: [:b | ^ aBlock value: b].
	^ super binding: aString for: block class: aClass ifPresent: aBlock
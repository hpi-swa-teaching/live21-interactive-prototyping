as yet unclassified
specialDropCommand: anObject

	^ (SBDoItCommand new artefact: self containingArtefact) do: [anObject element setProperty: anObject property to: self]
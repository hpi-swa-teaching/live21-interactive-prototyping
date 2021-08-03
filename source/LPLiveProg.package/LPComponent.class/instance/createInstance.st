as yet unclassified
createInstance

	| newInstance |
	newInstance := self newInstance.
	self sandblockEditor openMorph: ((Compiler evaluate: newInstance asExecutableBlock sourceString) topLeft: self topRight)
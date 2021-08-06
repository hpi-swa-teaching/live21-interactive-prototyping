as yet unclassified
launch

	self asExecutableBlock.
	self sandblockEditor openMorph: ((Compiler evaluate: self asExecutableBlock sourceString) topLeft: self topRight)
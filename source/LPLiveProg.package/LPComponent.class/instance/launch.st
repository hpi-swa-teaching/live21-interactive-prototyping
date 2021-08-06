as yet unclassified
launch

	self asExecutableBlock.
	LPAppBuilder new
		listenFor: LPAppBuilder class >> #build:state:;
		update;
		openInWindow
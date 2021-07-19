as yet unclassified
listenFor: aCompiledMethod

	listenFor := aCompiledMethod.
	SystemChangeNotifier uniqueInstance
		notify: self
		ofSystemChangesOfItem: #method
		change: #Modified
		using: #methodChanged:
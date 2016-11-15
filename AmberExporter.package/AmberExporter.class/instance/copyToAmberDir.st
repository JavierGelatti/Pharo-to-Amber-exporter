private-operations
copyToAmberDir
	self packages
		collect: [ :each | each , '.st' ]
		thenDo:
			[ :file | 	| inAmber |
			inAmber := self amberDir / file.
			inAmber deleteIfAbsent: [  ].
			file asFileReference copyTo: inAmber.
			self generateJsOf: file.
			progressBar increment ]
private-operations
removePreviousFileOut
	self packages
		collect: [ :each | each , '.st' ]
		thenDo:
			[ :file | 
			file asFileReference deleteIfAbsent: [  ].
			progressBar increment ]
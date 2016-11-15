private-operations
fileOutPackages
	self packages
		collect: [ :each | RPackage organizer packageNamed: each asSymbol ]
		thenDo: [ :each | each fileOut. progressBar increment ]
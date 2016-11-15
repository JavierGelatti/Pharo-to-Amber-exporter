instance creation
fromPackages: aCollectionOfPackages toAmberIn: aPathString
	^ self new
		packages: aCollectionOfPackages;
		amberPath: aPathString;
		yourself
private-operations
generateJsOf: file
	| pathAmber commands |
	pathAmber := '/' join: self amberDir parent fullPath segments.
	commands := (self containsTests: file)
		ifTrue:
			[ OrderedCollection
				with: 'cd /' , pathAmber
				with: 'amberc src/', file, ' -l amber_core/SUnit -n "amber-ondafsimulator"']
		ifFalse:
			[ OrderedCollection
				with: 'cd /' , pathAmber
				with: 'amberc src/', file, ' -n "amber-ondafsimulator"' ].
	self executeCommands: commands
operations
exportPackages
	| job |
	job := [ :bar |
		progressBar := bar.
		self removePreviousFileOut.
		self fileOutPackages.
		self copyToAmberDir
	] asJob.
	[ job
		title: 'Exporting to Amber...';
		min: 0;
		max: self packages size * 3;
		run. ] fork

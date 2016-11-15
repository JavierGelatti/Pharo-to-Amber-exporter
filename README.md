# Pharo to Amber exporter

This is an utility to export code from Pharo to Amber.

It does that by following three steps:

1. File out the selected packages
2. Copy the .st files to the specified Amber source directory
3. Compiles the .st files into .js, using the `amberc` command

It uses the [`OSProcess` class](http://pharo.gemtalksystems.com/book/PharoTools/OSProcess/).

### Example
```
exporter := AmberExporter
	fromPackages: #('Simulator-Core' 'Simulator-Core-Tests')
	toAmberIn: '/home/javier/Smalltalks/Simulator/src'.
exporter exportPackages.
```

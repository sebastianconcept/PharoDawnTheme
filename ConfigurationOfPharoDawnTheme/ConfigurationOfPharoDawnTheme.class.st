Class {
	#name : #ConfigurationOfPharoDawnTheme,
	#superclass : #Object,
	#instVars : [
		'project'
	],
	#classVars : [
		'LastVersionLoad'
	],
	#category : #ConfigurationOfPharoDawnTheme
}

{ #category : #private }
ConfigurationOfPharoDawnTheme class >> bootstrapPackage: aString from: aPath [ 
	| repository version |
	repository := MCHttpRepository
				location: aPath
				user: ''
				password: ''.
	repository
		versionReaderForFileNamed: aString , '.mcz'
		do: [:reader | 
			version := reader version.
			version load.
			version workingCopy repositoryGroup addRepository: repository]
]

{ #category : #catalog }
ConfigurationOfPharoDawnTheme class >> catalogChangeLog [
	"Returns a paragraph describing the most important changes in the configuration class."
	^ ''
]

{ #category : #catalog }
ConfigurationOfPharoDawnTheme class >> catalogContactInfo [
	"Returns a paragraph describing contact information such as email, mailing lists and website."
	^ 'You can contact the author on the pharo mailinglist or github repository'
]

{ #category : #catalog }
ConfigurationOfPharoDawnTheme class >> catalogDescription [
	"Returns a paragraph describing the project"
	^ 'A warm dark theme for Pharo.'
]

{ #category : #catalog }
ConfigurationOfPharoDawnTheme class >> catalogKeyClassesAndExample [
	"Returns a paragraph or more describing the key classes of your project. You can use Pillar/Pier syntax to layout out the text i.e., ==Code== and - for bullet."
	^ ' '
]

{ #category : #catalog }
ConfigurationOfPharoDawnTheme class >> catalogKeywords [
	"Returns an array of symbols"
	^ #(theme gui ui ide ) 
]

{ #category : #private }
ConfigurationOfPharoDawnTheme class >> ensureMetacello [
	"Bootstrap Gofer (if necessary), bootstrap ConfigurationOfMetacello (using old Gofer API), then load the latest 
	version of Metacello itself."

	Smalltalk at: #MetacelloProject ifAbsent: [
		Smalltalk at: #Gofer ifAbsent: [
			"Current version of Gofer from which to bootstrap - as of 1.0-beta.15"
			self bootstrapPackage: 'Gofer-lr.83' from: 'http://seaside.gemstone.com/ss/metacello' ].
		Smalltalk at: #Gofer ifPresent: [:goferClass | | gofer |
			gofer := goferClass new
				url: 'http://seaside.gemstone.com/ss/metacello';
				yourself.
			[ gofer addPackage: 'ConfigurationOfMetacello' ] on: Warning do: [:ex | ex resume ].
			gofer load ].
		"load latest version of Metacello, load a specific version if desired"
		(Smalltalk at: #ConfigurationOfMetacello) perform: #loadLatestVersion ]
]

{ #category : #'metacello tool support' }
ConfigurationOfPharoDawnTheme class >> isMetacelloConfig [
	"Answer true and the Metacello tools will operate on you"
	
	^true
]

{ #category : #'metacello tool support' }
ConfigurationOfPharoDawnTheme class >> lastMetacelloVersionLoad [
	"Answer the last version loaded and the list of packages loaded for that version."

	LastVersionLoad == nil ifTrue: [ LastVersionLoad := nil -> 'default' ].
	^LastVersionLoad
]

{ #category : #loading }
ConfigurationOfPharoDawnTheme class >> load [
	"self load"

	^self project latestVersion load
]

{ #category : #'metacello tool support' }
ConfigurationOfPharoDawnTheme class >> metacelloVersion: versionString loads: anArrayOrString [
	"Stash the last version loaded and the list of packages loaded for that version. The list
	 of packages will be used by the tools when doing 'Load Package Version'"

	LastVersionLoad := versionString -> anArrayOrString
]

{ #category : #accessing }
ConfigurationOfPharoDawnTheme class >> project [

	^self new project
]

{ #category : #versions }
ConfigurationOfPharoDawnTheme >> dev: spec [
	<version: #'dev'>
	
		spec for: #'common' do: [ 
		spec
			baseline: 'PharoDawnTheme' with: [ 
				spec 
					className: 'BaselineOfPharoDawnTheme';
					repository: 'github://sebastianconcept/PharoDawnTheme:master' ]]


]

{ #category : #'symbolic versions' }
ConfigurationOfPharoDawnTheme >> development: spec [
	<symbolicVersion: #'development'>

	spec for: #'common' version: 'dev'
]

{ #category : #versions }
ConfigurationOfPharoDawnTheme >> pharo8: spec [
	<version: '8.0'>

	spec for: #'common' do: [ 
		spec
			baseline: 'PharoDawnTheme' with: [ 
				spec 
					className: 'BaselineOfPharoDawnTheme';
					repository: 'github://sebastianconcept/PharoDawnTheme:master' ]]
]

{ #category : #accessing }
ConfigurationOfPharoDawnTheme >> project [

	^ project ifNil: [ | constructor |
		"Bootstrap Metacello if it is not already loaded"
		self class ensureMetacello.
		"Construct Metacello project"
		constructor := (Smalltalk at: #MetacelloVersionConstructor) on: self.
		project := constructor project.
		project loadType: #linear.
		project ]
]

{ #category : #'symbolic versions' }
ConfigurationOfPharoDawnTheme >> stable: spec [
	<symbolicVersion: #'stable'>

	spec for: #'common' version: '8.0'
]

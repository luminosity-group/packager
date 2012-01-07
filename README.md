Packager
========
Packager is a ruby command that wraps the juicer command line application for minifying and combining assets.

Installation
------------

	$ git clone git@git.luminosity-group.com:packager.git
	$ cd packager
    $ bundle install && rake install

**Note**: You may need to run:
	
	$ juicer install yui_compressor
	$ juicer install jslint

Default Usage
-------------
If there is a 'Packfile' in the current directory, packager will attempt to load the file and use it for it's configuration. You can use a Packfile to add or exclude certain elements that you would like included in the resulting package. Packfile's should be written in [YAML format](http://yaml.org/start.html).

**An example Packfile**:

	---
        package: myassets.zip
        javascript: myapp.js
        stylesheet: myapp.css
	    javascripts: [
	        javascripts/*.js ]
	    stylesheets: [
	        stylesheets/*.css ]
	    extras: [
	        img/* ]
	
The resulting output using the above Packfile would produce a zip file called "myassets.zip" containing "myapp.js", "myapp.css", and anything under the img directory.

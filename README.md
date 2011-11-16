Packager
========
Packager is a ruby command that wraps the juicer command line application for minifying and combining assets.

Installation
------------

	$ git clone git@git.ejholmes.net:packager.git
	$ cd packager
	$ rake install

**Note**: You may need to run:
	
	$ gem install bundler rake sass juicer
	$ juicer install yui_compressor
	$ juicer install jslint

Default Usage
-------------
Running packager from the command line will attempt to minify all css, sass, javascript and coffeescript in the current directory to a single javascript and css file, as well as minify the final result and zip up the contents into an assets.zip file.

If there is a 'Packfile' in the current directory, packager will attempt to load the file and use it for it's configuration. You can use a Packfile to add or exclude certain elements that you would like included in the resulting package. Packfile's should be written in [YAML format](http://yaml.org/start.html).

**An example Packfile**:

	---
	    output:
	        package: myassets.zip
	        javascript: myapp.js
	        stylesheets: myapp.css
	    javascripts: [
	        javascripts/*.js ]
	    coffeescripts: [
	        javascripts/*.coffee ]
	    stylesheets: [
	        stylesheets/*.css ]
	    sass: [
	        stylesheets/*.scss ]
	    extras: [
	        img/* ]
	
The resulting output using the above Packfile would produce a zip file called "myassets.zip" containing "myapp.js", "myapp.css", and anything under the img directory.

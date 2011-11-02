Packager
========
Packager is a ruby command that wraps the juicer command line application for minifying and combining assets.

Installation
------------

	$ git clone git@git.ejholmes.net:packager.git
	$ cd packager
	$ rake install

**Note**: You may need to
	
	$ gem install bundler rake

Default Usage
-------------
Running packager in a directory will attempt to minify all CSS to application.min.css, minify all JS to application.min.js and finally zip up the contents of the directory to assets.zip.

	$ ls
	stylesheets/
	javascripts/
	images/
	
	$ packager
	
	$ ls
	stylesheets/
	javascripts/
	images/
	application.min.js
	application.min.css
	assets.zip
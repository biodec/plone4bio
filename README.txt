=========================
Plone4Bio sample buildout
=========================

Building a plone 3.3.x demo site
--------------------------------

 $ python2.4 bootstrap.py -c demo-plone3.fg
 $ bin/buildout -c demo-plone3.cfg
 
Building a plone 4.x demo site
------------------------------

 $ python2.6 bootstrap.py -c demo.cfg
 $ bin/buildout -c demo.cfg

or, if you prefer to use virtualenv (apt-get install python-virtualenv):

 $ virtualenv --python=/usr/bin/python2.6 .
 $ bin/python2.6  bootstrap.py -c demo.cfg
 $ bin/buildout -c demo.cfg

More info at http://www.plone4bio.org 

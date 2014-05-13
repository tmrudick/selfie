Selfie
============

**Animated selfies of where your day has gone.**

In an attempt to quantify how much time I waste daily, I created a set of scripts to take both a photo of my screen and myself every minute. Then, I animate it to quickly get an idea of how much time I have spent coding, on Facebook, or in meetings throughout the day. 

**[Example animation](http://tmrudick.github.io/selfie/images/animated.gif)**

Requirements
------------
* [Imagemagick](http://www.imagemagick.org/)
* [ImageSnap](https://github.com/rharder/imagesnap)
* Mac OSX (testing only on Mavericks)

Both Imagemagick and ImageSnap can be installed via [Homebrew](http://brew.sh/).

Installation
------------
* `git clone git@github.com:tmrudick/selfie.git`
* Add the bin directory to your path

Taking Photos
-------------

Add this line into your crontab.

    * * * * * take-photo.sh
    
Photos will be added to a ~/Documents/selfies/%Y%m%d directory.
    
Creating Animations
-------------------

From a directory with images, run: 

    create-animation.sh
    
Contributing
------------

Please file any issues via the Github issue tracker. Feel free to send a pull request.

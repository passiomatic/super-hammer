Super Hammer
============

A curated fork of the [Rock Hammer][r] responsive web library with added superpowers. 


## Superpowers?
Yeah, added features which original Rock Hammer doesn't have. There are:

### A grid system
Rock Hammer by design doesn't include a grid system. Lately I've been using [Unsemantic][u] CSS framework a lot, so I added it to the mix.

### Some vector icons
[Font Awesome][fa] is an icon collection distributed as a web font. It's very handy to use and I've found myself to use it more and more in my recent projects.


## A note on directory names
Ruby on Rails and other popular web frameworks prefer to name directories holding static assets as "stylesheets", "images" and "javascripts" so I've changed those accordingly.

## Other changes
I don't use [Hammer for Mac][h] yet - someone could argue that I should - so I cut all the HTML partials from Super Hammer. 


## Working with SASS files

First download SASS utilities at [sass-lang.com/install](http://sass-lang.com/install).

Update all.css with your latest changes:
  
    make cssupdate
  
Tell SASS processor to rebuild all.css automagically when a SCSS file changes:
  
    make csswatch
  
Remove the .sass-cache directory:

    make cssclean
    

## License

Multiple licenses are available. I'll do my best to summarize theme here:

* **Rock Hammer** is licensed under the Apache License 2.0
* **Unsemantic** is dual-licensed both under MIT and GPL
* **Font Awesome** code and assents are licensed under [these terms](http://fortawesome.github.io/Font-Awesome/license/)


[r]: http://malarkey.github.io/Rock-Hammer/
[u]: http://unsemantic.com/
[fa]: http://fortawesome.github.io/Font-Awesome/
[h]: http://hammerformac.com/
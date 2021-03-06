Super Hammer
============

A curated fork of the [Rock Hammer][r] responsive web library with added superpowers. 


## Superpowers?
Yeah, added features which original Rock Hammer doesn't have. There are:


### Grid system
By design Rock Hammer doesn't include a grid system. Lately I'm using [Unsemantic][u] CSS framework a lot, so I added it to the mix. 

The variables `bpmobilemax` and `$bptabletmax` in `_config.scss` partial define the device breakpoints which activate the Unsemantic mobile, tablet and desktop grids. You can keep the default pixel values or use the predefined logical breakpoints `bp2`...`bp6`. 

The `$show-breakpoint` SASS variable lets you display current device and logical breakpoints (default is false).

### Vector icons
[Font Awesome][fa] is an icon collection distributed as web font. It's very handy to use and I've found myself to use it more and more in my recent projects.


## A note on directory names
Ruby on Rails and other popular web frameworks prefer to name directories holding static assets as `stylesheets`, `images` and `javascripts` so I've changed those accordingly.


## Other changes

* I don't use [Hammer for Mac][h] yet — someone could argue that I should — so I cut all the HTML partials from Super Hammer. 
* I've made some changes to button and alert classes to align them to Boostrap 2. Super Hammer has a generic alert style (yellow) plus `alert--error`/`alert--danger` (red), `alert--info` (blue) and `alert--success` (green). Buttons have a generic style plus `btn-primary` (blue), `btn-success` (green), `btn-error`/`btn-danger` (red) and `btn-inverse` (black).
* Form fields have validation states: apply a `has-success`, `has-warning` and `has-error` class to the field parent container.


## Working with SASS files

First, download SASS 3.3 at [sass-lang.com/install](http://sass-lang.com/install).

Update both stylesheets `all.css` and `lte-ie8.css` with your latest changes:
  
    make

Update just `all.css` with your latest changes:
  
    make update
  
Tell SASS processor to rebuild all.css automagically when a SCSS file changes:
  
    make watch
  
Remove the `.sass-cache` directory:

    make clean

While building a site you may want to only recompile/watch `all.css`, which is the main CSS file targeted to modern browsers. Occasionally when you need to deploy or test CSS against IE 8 and previous versions you run `make` (or `make all`) to rebuild all.


## License

Multiple licenses are available. I'll do my best to summarize them here:

* **Rock Hammer** is licensed under the Apache License 2.0
* **Unsemantic** is dual-licensed both under MIT and GPL
* **Font Awesome** code and assents are licensed under [these terms](http://fortawesome.github.io/Font-Awesome/license/)


[r]: http://malarkey.github.io/Rock-Hammer/
[u]: http://unsemantic.com/
[fa]: http://fortawesome.github.io/Font-Awesome/
[h]: http://hammerformac.com/
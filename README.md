Super Hammer
============

A curated fork of the [Rock Hammer][r] responsive web library with added superpowers. 


## Superpowers?
Yeah, added features which original Rock Hammer doesn't have. There are:


### Grid system
By design Rock Hammer doesn't include a grid system. Lately I'm using [Unsemantic][u] CSS framework a lot, so I added it to the mix. 

The two variables `bpmobilemax` and `bpdesktopmin` in `_config.scss` partial activate the Unsemantic mobile and desktop grids respectively. You can keep the default pixel values or use the predefined variables `bp2`...`bp6`.

You can further tweaks Unsemantic grid by changing the `unsemantic/_unsemantic-vars.scss` file. 

### Vector icons
[Font Awesome][fa] is an icon collection distributed as web font. It's very handy to use and I've found myself to use it more and more in my recent projects.


## A note on directory names
Ruby on Rails and other popular web frameworks prefer to name directories holding static assets as `stylesheets`, `images` and `javascripts` so I've changed those accordingly.


## Other changes

* I don't use [Hammer for Mac][h] yet — someone could argue that I should — so I cut all the HTML partials from Super Hammer. 
* I've made some changes to button and alert classes to align them to Boostrap 2. Super Hammer 0.2 has a generic alert style and `alert--error`/`alert--danger` (red), `alert--info` (blue) and `alert--success` (green). Buttons styles are default, `btn-primary`, `btn-success`, `btn-warning` and `btn-inverse`.
* New `$show-breakpoint` SASS variable in `super-hammer.scss` lets you display current breakpoint (default is false).


## Working with SASS files

First, download SASS at [sass-lang.com/install](http://sass-lang.com/install).

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
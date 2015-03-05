### Meta layout

Structuring a website into usable components.


#### Components and folders

The biggest problem today in front-end development is to find a perfect structure for all the files and folders composing the user interface.
A simple website can have hundreds of source files describing the layout, the grid, menus, articles, sections, headers and footers and so long.
It turns out there is no standard way to organize them into a structure everybody understands and agrees. Since many people work on a project they should have an immediate, intuitive way to locate and extend source files.

Every company does the composing differently:

- Google, Material Design: http://www.google.com/design/spec/material-design/introduction.html using Animations, Style, Layout, Components and Patterns

- Lonely Planet Styleguide: http://rizzo.lonelyplanet.com/styleguide/design-elements/colours using Design Elements, UI Components, JS Components, Widgets and CSS Utilities

- Pattern Lab, Atomic Design: http://demo.patternlab.io/ using Atoms, Molecules, Organisms, Templates and Pages

As workflows it seems components also change from project to project. They are part of a culture not of a standard.


#### The current approach

I have been created 10+ projects built on Atomic design principles. This methodology was a huge step forward from the structure I've been used before. But turned out not to be the holy grail.

First of all the main folders and concepts (Atoms, Molecules, Organisms, Templates and Pages) do not cope well. It's all clear what goes into Atoms, Templates and Pages but the remaining two levels, Molecules and Organisms, hold not enough abstraction for the rest of the site.

Second, it is hard to make a connection between headers, footers, articles, buttons, lists etc. and atoms, molecules and organisms. In the best case you can remember the logic but you can't expect others to find out in which atomic folder the secondary footer of the site should belong.

After many cries I've come up with a more natural solution.
If you've built websites top-down (add a blank page, then a header, then a navigation, then some content, then add styling) instead of bottom-up (import a component library / framework then chop parts not required for this current site) then you'll maybe find this method intuitive.


##### 1. Structure and Design

When you start with a blank page the first thing you do is to write HTML. Add some content and structure. Then later add some styling like fonts and colors. Every website has a structure and a design layer. Let put them as the highest level entries in our folder structure.


##### 2. Pages and Templates

Websites starts with a page. Without page there is no website. Let Page will be the first entry in our Structure.

Unless you are creating a Single Page Web Application your site will have probably more then one page. These pages share at least one common part: the <code>head</code> section. Let Templates manage how content flows through different pages.


#### 3. Elements

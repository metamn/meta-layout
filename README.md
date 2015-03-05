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

As workflows&mdash;it seems&mdash;components also change from project to project. They are part of a culture not of a standard.


#### The Meta approach

I have been created 10+ projects built on Atomic design principles. This methodology was a huge step forward from the structure I've been used before. But turned out not to be the holy grail.

First of all the main folders and concepts (Atoms, Molecules, Organisms, Templates and Pages) do not cope well. It's all clear what goes into Atoms, Templates and Pages but the remaining two levels, Molecules and Organisms, hold not enough abstraction space for many of the components building the rest of the site.

Second, it is hard to make a connection between headers, footers, articles, buttons, lists etc. and atoms, molecules and organisms. In the best case you can remember the logic but you can't expect other developers to find out in which atomic folder the secondary footer of the site should belong.

After many cries I've come up with a more natural solution.
If you've built websites bottom up&mdash;add a blank page, then a header, then a navigation, then some content, then add styling&mdash;instead of top down&mdash;import a component library or framework then chop parts not required for this current site&mdash;then you'll find this method intuitive.


#### 1. Structure and Design

When you start with a blank page the first thing you do is to write HTML. Add some content and structure. Then later add some styling like fonts and colors. Every website has a structure and a design layer. Let put them as the highest level entries in our folder structure.

<pre>
└── components
    ├── design
    └── structures
</pre>


#### 2. Pages and Templates

Websites starts with a page. Without page there is no website. Let Page will be the first entry in our Structure.

Unless you are creating a single page web application your site will have probably more then one pages. These pages share at least one common part: the <code>head</code> section. Templates are here to manage how shared content flows through different pages.

<pre>
└── components
    ├── design
    └── structures
        ├── pages
        └── templates
</pre>


#### 3. Elements

You are probably writing semantic HTML5 code using <code>section</code>, <code>article</code>, <code>nav</code> instead of plain old <code>div</code>.

Let's have a folder to collect all these elements.

<pre>
└── components
    ├── design
    └── structures
        ├── elements
        │   ├── articles
        │   ├── figures
        │   ├── footers
        │   ├── headers
        │   ├── navigations
        │   ├── sections
        │   └── ...
        ├── pages
        └── templates
</pre>

This way when you see a <code>figure</code> in the HTML code you'll immediately know where to look for the associated code.


#### 4. Layouts

Now we have all elements collected into pages flowing through templates. What's left is to arrange the elements.

Maybe we will have a full page layout, a sliding menu, a responsive grid, or different layers stacked upon each other. All the code positioning the elements should be handled by the Layout folder.

This way we have separated two concerns: Elements describe the look, Layouts describe how they are arranged.

Now our <code>component</code> folder should look like this:

<pre>
├── design
│   ├── decorations
│   └── fonts
└── structures
    ├── elements
    │   ├── articles
    │   ├── figures
    │   ├── footers
    │   ├── headers
    │   ├── navigations
    │   └── sections
    ├── layouts
    │   ├── full-page
    │   ├── grid
    │   ├── header-and-footer
    │   ├── layers
    │   └── sliding-menu
    ├── pages
    └── templates
</pre>

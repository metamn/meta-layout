### Meta grid

A flexbox based responsive grid.


#### Why flexbox?

First there were tables then divs now flexible boxes.
The shift from divs to flex is the same as it was from tables from divs.

With flexbox we can forget <code>position: relative</code> and <code>float:left</code> instead we have grid elements (boxes) which can be easily sized and positioned wherever we want. And their order of display can be easily interchanged to support responsiveness.


#### Bugs

##### Firefox, big child element breaks layout (FIXED)

- if we have a 300x300px grid cell with an 500x500px image inside the grid cell will be grown to 500x500px shifting the whole layout.
- http://stackoverflow.com/questions/26895349/how-can-i-get-ff-33-x-flexbox-behavior-in-ff-34-x


#### Resources

- http://chriswrightdesign.com/experiments/flexbox-adventures/

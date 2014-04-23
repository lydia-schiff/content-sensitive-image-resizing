Content-Sensitive-Image-Resizing
================================

Content-sensitive image resizing using seam-carving, based on Avidan, Shamir 2007 

The idea is to figure out what's important in an image and then reduce the image without distorting the important parts.

To automatically identify "interesting" parts of a image I used gradient magnitude as an energy function. Then remove one pixel-wide seam at a time based on minimizing the cumulative sum of energy values along a seam using dynamic programming.

![matches](resultphotos/seam1.png?raw=true)

![matches](resultphotos/seam2.png?raw=true)

![matches](resultphotos/seam3.png?raw=true)

![matches](resultphotos/seam4.png?raw=true)

![matches](resultphotos/seam5.png?raw=true)

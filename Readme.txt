
2) E2a.jpg is the energy function of the input image. It uses gradient magnitude as the energy function which 
detects edges which is shown in the image. E2b.jpg represents the cumulative minimum energy array. It shows the 
value of the energy function at each pixel added to the minimum of cumulative minimum energy of the three neighbors 
in the column to the left. The values are between  0.0015 and 12.0680.

3) The two overlaid seams in E3.jpg are reasonable because they wrap around objects of interest. This is to be expected since the seams are chosen for minimum energy.

4) E4b.jpg is a picture of Marina City in Chicago. It has had 100px removed horizontally. Because the towers are 
vertical and because of the high energy of the pattern of the windows and balconies, Resizing was successful.

5) E5b.jpg is a picture of some kites with 100px removed both horizontally and vertically. The resizing is partially 
successful because all of the kites end up closer together without a change in size or aspect of the kites. There 
are artifacts on the strings which being diagonal straight edges create issues.

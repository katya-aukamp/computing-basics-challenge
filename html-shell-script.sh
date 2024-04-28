
#!/bin/bash

# While testing noticed that the second table content didn't have images/ in front of it so always displayed incorrectly
#The logic here is, in generating a new file, going to break this up into several steps
# Step 1: Get the top part of the html that isn't impacted or changing - including keeping the first row break
# Step 2: Get all the file names from the image folder
# Step 3: After every three photos added to the table create a row break to create rows of 3 images

top_html="<!DOCTYPE html>
<html>
  <head>
    <title>This is the title of the webpage!</title>
  </head>
  <body>
   <center>
    <h1>MATH COLLECTION</h1>
   </center>

  <table border=\"5\" bordercolor=\"red\" align=\"center\">
    <tr>
        <th colspan=\"3\">PICTURES</th> 
    </tr>
    <tr>\""
          # directory where I unziped the website images
          # if you were to use this code, you would replace for your own directory here
image_dir="/usr/berkeley/computing-basics-challenge/images"
          # the new output file
          # if you were to use this code you'd replace the directory and file name below
output_file="/usr/berkeley/computing-basics-challenge/updated_index.html"

    # the two variables signaling the end of a row
row_end="</tr>"
row_start="<tr>"

# Loading the top html once, and it includes the <tr> for the fist row. This makes it so it ends and starts a new row ever 3
echo " $top_html" >> "$output_file"

  # the loop logic says pull each image file, and put it into the table
    i=1
       for image_file in "$image_dir"/*; 

         do
         echo "  <td><img src=\"images/$(basename "$image_file")\" alt=\"\" border=3 height=100 width=300></td> " >> "$output_file"
         
        if (( i % 3 == 0 )); then
        # And if the image count is divisible by 3 then end the row and start a new one
       
        echo " $row_end" >> "$output_file"
        echo " $row_start" >> "$output_file"
        
    fi
    i=$((i+1))
    done


# added so that I can know when things finished
echo "HTML Updated"
### computing-basics-challenge

## Solution to The Challenge for 1D Computing Basics course
*Below are answers to questions in the Tasks and notes on how to use my code*

# Task Answers

## Create a working branch (other than Master)
New branch created and named it working
  
## Exchange one of hte images in the sample index.html and see if you can display that in the broser. Did you need to restart the sever to do that? Why or why not?
I didn't have to restart the server but I did need to make a new request by refreshing the page. I didn't have to restart the server because the connection was made, and the file location wasn't changign just what the server was surfacing. Similar to websites with products for sale, if they update it for sales or anything then they'd had to restart the server each time, wouldn't really make sense.

## How can you look up the process ID of your server?
To look up the darkhttpd server I needed to get all the list of processes running in terminal and then I'd only want to get the results around darkhttpd so I'd use the 
  > ps a | grep darkhttpd
---------------------------------------------------------------------------

# How to Use Code

With the challenge question was to take the original html code provided and build off of it to generate an html file that allows for all 150 images provided. Provided solution to hosting image table in 3 columns, and rows until all images are shown

### 1. Download the images and save to a known directory
### 2. Take note of the directly 
### 3. Make and name a blank html file that will host your updated logic
### 4. Note the path of the new file
### 5. Download the html-shell-script.sh file
### 6. update the paths for the image directory and output html file that fit your own format
### 7. Save the shell file with the updates
### 8. open bash command line
### 9. Run bash html-shell-script.sh (or bash <name of updated shell file> if you changed the name)

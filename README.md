# Xvfb-screenshots
Capture screenshots of URLs using Xvfb deployed in Amazon EC2

#Requirements

Imagemagick
Xvfb
Firefox
GTK+ and Firefox (https://gist.github.com/joekiller/4144838)

#How to use

`./screenshot.sh url.txt`

url.txt -> Contains list of URLs line by line

The script will save the URLs in JPG with high resolution (1280x1024), of course you can change to resolution. The script will also cut and trim the firefox window to give a clean screenshot.



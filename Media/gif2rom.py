#! /usr/bin/env python
#works only with .gif images

import sys
from PIL import Image

# Detecting if image is a gif
if sys.argv[1][len(sys.argv[1])-4:] != '.gif':
  print("Source image is not a .gif, aborting scrypt ... ")
  exit()

out = ''
img = Image.open(sys.argv[1])
out_file_name = str(sys.argv[1])[:-4]+'_rom.txt'
buffer = open(out_file_name,"w")

for i, pixel in enumerate(img.getdata()):
    if i == 0:
        out += '        ('
    elif i % 32 == 0:
      out = out[:-2] + '),\n        ('
    out += '"' +str(pixel).replace('0', '000').replace('1', '001').replace('2', '100').replace('3', '101').replace('4', '010').replace('5', '110').replace('6', '111').replace('7','011') + '", '
    #out += '"' +str(pixel)+ '", '
    #

out = out[:-2]+')'
buffer.write(out)
buffer.close()
#print(out)

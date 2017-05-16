# -*- coding: utf-8 -*-
"""
Spyder Editor

This is a temporary script file.
"""

# Module Wand

# http://docs.wand-py.org/en/0.4.4/


import sys
sys.executable
import os

os.chdir("D:/Daten/GitHub/RSocialScience/multilevel/figure")

# http://stackoverflow.com/questions/27826854/python-wand-convert-pdf-to-png-disable-transparent-alpha-channel


from wand.image import Image
from wand.color import Color

with Image(filename='Data1.pdf', resolution=300) as img:
    img.background_color = Color("white")
    img.alpha_channel = False
    img.save(filename='image.png')
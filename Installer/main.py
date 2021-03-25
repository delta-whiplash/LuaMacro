# coding: utf-8
import os
import sys
import shutil
from tkinter import Button, Tk, Label
import zipfile

class installer:
    @staticmethod
    def install():
        
        with zipfile.ZipFile('C:/Program Files/DeltaMacro/luamacros.zip', 'r') as zip_ref:
            zip_ref.extractall()
    @staticmethod
    def uninstall():
        try:
            shutil.rmtree('C:/Program Files/DeltaMacro/')
        except OSError as e:
            print("Error: %s - %s." % (e.filename, e.strerror))
    @staticmethod
    def update():
        pass
    

fenetre = Tk()

label = Label(fenetre, text="DeltaMacro")
label.pack()

# bouton de sortie
Button(fenetre, text="Install", command=installer.install()).pack()
Button(fenetre, text="Update", command=installer.update()).pack()
Button(fenetre, text="uninstall", command=installer.uninstall()).pack()

fenetre.mainloop()

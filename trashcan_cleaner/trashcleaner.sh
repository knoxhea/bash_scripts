#!/bin/bash

#set the variables
trash_path= /home/$USER/.local/share/Trash/files


#purge trashcan
cd $trash_path

rm -rf *
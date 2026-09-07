#!/bin/bash
export DISPLAY=:0
termux-x11 :0 &
sleep 5
clear
startxfce4 &

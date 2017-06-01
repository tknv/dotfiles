#!/bin/sh
# x11vnc -forever -display :0 -rfbauth ~/.x11vnc/passwd
x11vnc -forever -localhost -solid black -display :0 -rfbauth ~/.x11vnc/passwd

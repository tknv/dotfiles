#!/usr/bin/env bash
URL="https://github.com/gkovacs/pdfocr.git"
INSTALL_DIR="/opt/pdfocr"
INSTALL_PREFIX="/usr/local"

if ! type git > /dev/null 2>&1; then
    echo "'git' is not found. Install it with the command below and try again"
    echo
    echo "  $ sudo aptitude install git"
    echo
    exit 1
fi

echo "Installing required packages..."
sudo aptitude -yq install ruby \
                          exactimage \
                          tesseract-ocr

sudo git clone $URL "$INSTALL_DIR"
sudo mkdir -p "$INSTALL_PREFIX/bin"
sudo mkdir -p "$INSTALL_PREFIX/share/man/man1"
sudo ln -sf "$INSTALL_DIR/pdfocr.rb" "$INSTALL_PREFIX/bin/pdfocr"
sudo ln -sf "$INSTALL_DIR/pdfocr.1"  "$INSTALL_PREFIX/share/man/man1/pdfocr.1"


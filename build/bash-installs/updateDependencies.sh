#!/bin/bash
cd ../
echo ""
echo ""
echo "***** Installing required dependencies..."
echo ""
# INSTALL REQUIRED DEPENDENCIES
python3 -m pip install --upgrade scipy
python3 -m pip install --upgrade networkx
python3 -m pip install --upgrade matplotlib
python3 -m pip install --upgrade tk
python3 -m pip install --upgrade pathlib
python3 -m pip install --upgrade sympy
python3 -m pip install --upgrade Pillow
python3 -m pip install --upgrade mpmath
python3 -m pip install --upgrade schemdraw
python3 -m pip install --upgrade pyinstaller

echo ""
echo ""
echo "***** Installing Nuskell..."
echo ""
# INSTALL NUSKELL
mkdir nuskell-jphuse
echo ""
echo "    *** Directory made"
cd nuskell-jphuse
git clone https://github.com/jphuse/nuskell.git
echo ""
echo "    *** Repository Cloned"
cd nuskell
echo ""
echo "    *** Installing dependencies..."
python3 -m pip install --upgrade dsdobjects
python3 -m pip install --upgrade pytest
echo ""
echo "    *** Installing nuskell DEV..."
python3 -m pip install .[dev]
echo ""
echo "    *** Running pytest..."
python3 -m pytest
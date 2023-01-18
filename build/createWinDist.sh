#!/bin/bash
rm -r build
rm -r dist
rm "FUNDNA.spec"
rm "FUNDNA --debug.spec"
mkdir dist
cd dist
mkdir assets
cd ../
curl -o "dist/assets/result.png" https://gyazo.com/ae77ab94a7eccb8f8c6603be45aa1020.png
curl -o "dist/assets/taylor.png" https://gyazo.com/a0c666e23c31024e4b5097f626d550e0
curl -o "dist/assets/rearranged.png" https://gyazo.com/f5846f1ed0e124ad66cb5690437a8cd8

python -m pip install scipy
python -m pip install networkx
python -m pip install matplotlib
python -m pip install tk
python -m pip install pathlib
python -m pip install sympy
python -m pip install Pillow
python -m pip install mpmath

pyinstaller gui.py Function.py FuncTypes.py GateTypes.py NotGateTypes.py RearrangeType.py Util.py --name "FUNDNA --debug" --clean --onefile --icon "assets/UK logo-white.png" --add-data "assets/*.png;assets" --hidden-import=scipy --hidden-import=networkx --hidden-import=matplotlib --hidden-import=PIL --hidden-import=PIL.ImageTk --hidden-import=PIL.Image --hidden-import=pathlib --hidden-import=sympy --hidden-import=mpmath --hidden-import=tk --debug=imports
pyinstaller gui.py Function.py FuncTypes.py GateTypes.py NotGateTypes.py RearrangeType.py Util.py --name "FUNDNA" --clean -w --onefile --icon "assets/UK logo-black.png" --splash "assets/FUNDNA Splash Page.png" --add-data "assets/*.png;assets" --hidden-import=scipy --hidden-import=networkx --hidden-import=matplotlib --hidden-import=PIL --hidden-import=PIL.ImageTk --hidden-import=PIL.Image --hidden-import=pathlib --hidden-import=sympy --hidden-import=mpmath --hidden-import=tk --debug=imports
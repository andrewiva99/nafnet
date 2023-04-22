#!/bin/bash

. nafnet/bin/activate

python basicsr/demo.py -opt  options/test/SIDD/NAFNet-width64.yml  --input_path /NAFNet/noisy.png --output_path /NAFNet/noisy1.png
python test.py
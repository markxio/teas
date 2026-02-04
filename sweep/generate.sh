#!/bin/bash

python3 -m venv venv
source venv/bin/activate
pip install pandas

target_dir=kubernetes_configs
mv ${target_dir} "${target_dir}-old"
python3 generate.py --csv_file=data/experiments.csv --target_dir=kubernetes_configs

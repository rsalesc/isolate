#!/bin/bash

box_dir=`isolate -b=0 --cg --init`

sudo cp a.out $box_dir/box/
isolate --meta=log --mem=10241024 --time=2 --wall-time=10 --box-id=0 --stdout=stdout --stderr=stderr --processes=1 --dir=/etc=/etc:rw --cg --cg-timing $@ --run -- ./a.out

isolate -b=0 --cg --cleanup

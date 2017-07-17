#!/bin/bash

for i in {1..10}; do time bash isolate.sh $@; done

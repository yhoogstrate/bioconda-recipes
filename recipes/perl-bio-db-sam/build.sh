#!/bin/bash
export SAMTOOLS=$PREFIX
cpanm -i --build-args='--config lddlflags=-shared' .

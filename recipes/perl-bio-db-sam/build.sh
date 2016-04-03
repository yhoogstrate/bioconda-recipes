#!/bin/bash
cpanm -i --build-args='--config lddlflags=-shared' .

#!/bin/bash

# Initialize Tycho repository layout


echo "[Tycho] Initializing directory structure..."


# Top-level directories

mkdir -p bin build docs include python scripts src tests


# Native code (C / htslib)

mkdir -p src/common/include
mkdir -p src/subsample/include

touch src/common/tycho_common.c
touch src/common/include/tycho_common.h
touch src/common/include/tycho_version.h

touch src/subsample/subsample.c
touch src/subsample/subsample_pe.c
touch src/subsample/io_htslib.c
touch src/subsample/rng.c
touch src/subsample/include/tycho_subsample.h


# Python package (CLI + orchestration)

mkdir -p python/tycho/commands

touch python/tycho/__init__.py
touch python/tycho/__main__.py
touch python/tycho/cli.py
touch python/tycho/util.py

touch python/tycho/commands/__init__.py
touch python/tycho/commands/subsample.py
touch python/tycho/commands/qc.py
touch python/tycho/commands/interleave.py
touch python/tycho/commands/split.py
touch python/tycho/commands/stats.py


# Binaries (built artifacts)

touch bin/tycho-subsample


# Docs

mkdir -p docs/algorithms
touch docs/design.md
touch docs/architecture.md
touch docs/algorithms/subsample.tex


# Examples

mkdir -p examples
touch examples/subsample_se_demo.sh
touch examples/subsample_pe_demo.sh


# Tests

mkdir -p tests/data
touch tests/test_subsample_counts.sh
touch tests/test_subsample_pairs.py
touch tests/data/toy_R1.fq.gz
touch tests/data/toy_R2.fq.gz


# Scripts / glue

touch scripts/tycho_env.sh

echo "[Tycho] Initialization complete."

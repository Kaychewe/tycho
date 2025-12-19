
tycho/
├── README.md
├── LICENSE
├── .gitignore
├── pyproject.toml

├── src/                          # native code (C/C++)
│   ├── common/                   # shared helpers used by multiple utilities
│   │   ├── include/
│   │   │   ├── tycho_common.h
│   │   │   └── tycho_version.h
│   │   └── tycho_common.c        # CLI helpers, logging, path utils, etc.
│   └── subsample/                # the subsampling engine (C + htslib)
│       ├── include/
│       │   └── tycho_subsample.h
│       ├── subsample.c           # main entry
│       ├── subsample_pe.c        # paired-end logic
│       ├── io_htslib.c           # FASTQ streaming via htslib
│       └── rng.c                 # deterministic PRNG
│
├── python/                       # Python package for CLI + orchestration
│   └── tycho/
│       ├── __init__.py
│       ├── __main__.py           # python -m tycho
│       ├── cli.py                # `tycho <cmd> ...` dispatcher
│       ├── util.py               # helpers (depth math, metadata, etc.)
│       └── commands/             # one file per command
│           ├── __init__.py
│           ├── subsample.py      # wraps the C binary (or shared lib later)
│           ├── qc.py             # future
│           ├── interleave.py     # future
│           └── split.py          # future
│
├── bin/                          # built executables
│   └── tycho-subsample           # C binary (called by Python or used directly)
│
├── include/                      # optional top-level public headers (if you want)
│   └── tycho.h
│
├── build/                        # local builds (ignored by git)
├── deps/                         # vendored deps if needed (optional)
│   └── htslib/                   # optional: submodule or vendored htslib
│
├── scripts/                      # thin wrappers / HPC glue (optional)
│   └── tycho_env.sh
│
├── docs/
│   ├── design.md
│   └── algorithms/
│       ├── subsample.tex
│       └── pairing_check.tex
│
├── examples/
│   ├── subsample_pe_demo.sh
│   └── subsample_se_demo.sh
│
└── tests/
    ├── data/
    │   ├── toy_R1.fq.gz
    │   └── toy_R2.fq.gz
    ├── test_subsample_pairs.py
    └── test_subsample_counts.sh

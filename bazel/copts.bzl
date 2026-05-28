"""
Build options and preprocessor definitions for the bx library.
"""

_GENIE_FLAG_CPP20 = ["-std=c++20"]

_GENIE_FLAG_FLOAT_FAST = ["-ffast-math"]
_GENIE_FLAG_ENABLE_SSE4 = ["-msse4.2"]
_GENIE_FLAG_ENABLE_AVX = ["-mavx"]

_GENIE_FLAG_EXTRA_WARNINGS = ["-Wall", "-Wextra"]

_GENIE_FLAG_NO_RTTI = ["-fno-rtti"]
_GENIE_FLAG_NO_EXCEPTIONS = ["-fno-exceptions"]

_GENIE_STDC_MACROS = [
    "-D__STDC_LIMIT_MACROS",
    "-D__STDC_FORMAT_MACROS",
    "-D__STDC_CONSTANT_MACROS",
]

_BX_OPTIONS = [
    _GENIE_FLAG_CPP20,
    _GENIE_FLAG_EXTRA_WARNINGS,
    _GENIE_FLAG_FLOAT_FAST,
    _GENIE_FLAG_NO_EXCEPTIONS,
    _GENIE_FLAG_NO_RTTI,
    _GENIE_FLAG_ENABLE_SSE4,
    _GENIE_FLAG_ENABLE_AVX,
    _GENIE_STDC_MACROS,
]

_BX_FLAGS = [flag for sublist in _BX_OPTIONS for flag in sublist]

BX_COPTS = _BX_FLAGS + [
    "-Wshadow",
    "-Wunused-value",
    "-Wundef",
]

miniz-cpp
=========

A cross-platform header-only library for reading and writing ZIP files using a nice simple API similar to [Python's zipfile](https://docs.python.org/3/library/zipfile.html). See [examples/](https://github.com/tfussell/miniz-cpp/tree/master/examples) for a demonstration of the use of the library.

### ChangeLog

#### 2023.11.6

- fix bug(invalid conversion from ‘std::size_t (*)(void*, uint_least64_t, const void*, std::size_t)’ {aka ‘long unsigned int (*)(void*, long unsigned int, const void*, long unsigned int)’} to ‘mz_file_write_func’ {aka ‘long unsigned int (*)(void*, long long unsigned int, const void*, long unsigned int)’})


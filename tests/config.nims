switch("path", "$lib/../testament/lib")
  # so we can `import stdtest/foo` inside tests
  # Using $lib/../ instead of $nim/ so you can use a different nim to run tests
  # during local testing, e.g. nim --lib:lib.

## prevent common user config settings to interfere with testament expectations
## Indifidual tests can override this if needed to test for these options.
switch("colors", "off")
switch("listFullPaths", "off")
switch("excessiveStackTrace", "off")

# for std/unittest
switch("define", "nimUnittestOutputLevel:PRINT_FAILURES")
switch("define", "nimUnittestColor:off")

switch("define", "nimLegacyTypeMismatch")

hint("Processing", off)
  # dots can cause annoyances; instead, a single test can test `hintProcessing`

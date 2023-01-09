# Timber - A logging library for Stanza

This project contains the implementation of a stanza library for generating
logging output.

This project is loosely based on the [Python logging module](https://docs.python.org/3/library/logging.html). The idea is to provide the user with the ability to create a tree of loggers with abstracted handling facilities.

Example:

```

val logger = get-logger("auth")


public defn access-resource(request):

  debug(logger, "User '%_' Attemping Login" % [user(request)])
  if not authenticate(request):
    error(logger, "User '%_' Failed to Login" % [user(request)])
    ...

```

This project is a work in progress. I want to add the following additional features:

1.  Configuration from a TOML or JSON object.
2.  Additional logging handlers like File Handlers and UDP/syslog Handlers.
3.  Additional Formatters for JSON, etc.
4.  Add exception object handling and formatting.
3.  Add timestamp support
    1.  Current stanza core library doesn't support this any date facility.
    2.  Probably needs a new library.
4.  Contextual data in the form of `KeyValue` objects.

# Setup

1.  If you are using JITx in VSCode
    1.  You can run the unit tests with `Ctrl-P` and then `task tests`
2.  Building from the command line:
    1.  Make sure `stanza` is on your path.
    2.  On Windows:
      1.  Install [MinGW-w64](https://www.mingw-w64.org/) and make sure the `mingw-make.exe` is on your path.
      2.  `mingw-make.exe` - Builds the package files.
      3.  `mingw-make.exe tests` - Runs the unit tests
    3.  On Linux:
      1.  `sudo apt install build-essential`
      2.  `make` - Builds the packages
      3.  `make tests` - Runs the unit tests.


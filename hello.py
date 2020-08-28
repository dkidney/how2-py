"""One-line summary of what the script does

Blah
Blah

This file can also be imported as a module and contains the following
functions:

    * hello - prints hello (name}
    * main - the main function of the script
"""

import sys 


def hello(name):
    """Prints hello (name}

    Parameters
    ----------
    name : str
        The name to print
    """

    print("hello", name)


def main():
    hello(sys.argv[1])


if __name__ == "__main__":
    main()

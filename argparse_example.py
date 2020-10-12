"""
A description
"""

def main(words, integer, coin, favourite, true):
    print()
    print('words    :', *words)
    print('integer  :', integer)
    print('coin     :', coin)
    print('favourite:', favourite)
    print('true     :', true)


if __name__ == '__main__':

    import argparse

    parser = argparse.ArgumentParser(
        description=__doc__,
        epilog='Good luck! :)')

    parser.version = '1.0'
    parser.add_argument(
        '--version', '-v',
        action='version')

    parser.add_argument(
        'words',
        help='some words',
        type=str,
        nargs='+')

    parser.add_argument(
        '--integer', '-i',
        help='an integer',
        metavar='integer',
        type=int,
        default=42)

    parser.add_argument(
        '--coin', '-c',
        help='result of a coin  toss',
        choices=['heads', 'tails'],
        default='heads')

    parser.add_argument(
        '--favourite', '-f',
        help='favourite number',
        type=int,
        choices=range(1, 6),
        default=3)

    parser.add_argument(
        '--true', '-t',
        help='true or false',
        action='store_true')

    args = parser.parse_args()

    print(vars(args))

    main(words=args.words,
         integer=args.integer,
         coin=args.coin,
         favourite=args.favourite,
         true=args.true)

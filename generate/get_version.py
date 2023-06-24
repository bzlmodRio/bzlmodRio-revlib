from get_revlib_dependencies import get_revlib_dependencies


def main():
    group = get_revlib_dependencies()
    print(group.version)


if __name__ == "__main__":
    main()

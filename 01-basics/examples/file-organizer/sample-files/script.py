#!/usr/bin/env python3
# Data processing script

def process_data(data):
    """Process and clean data"""
    return [item.strip() for item in data if item]

def main():
    data = ['  hello  ', 'world', '', 'python  ']
    result = process_data(data)
    print(result)

if __name__ == '__main__':
    main()

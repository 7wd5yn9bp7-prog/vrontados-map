import os
import sys

def check_preconnect():
    filepath = 'index.html'
    if not os.path.exists(filepath):
        print(f"Error: {filepath} not found")
        sys.exit(1)

    with open(filepath, 'r', encoding='utf-8') as f:
        content = f.read()

    required_tags = [
        '<link rel="preconnect" href="https://maps.googleapis.com">',
        '<link rel="preconnect" href="https://maps.gstatic.com">',
        '<link rel="dns-prefetch" href="https://maps.googleapis.com">',
        '<link rel="dns-prefetch" href="https://maps.gstatic.com">'
    ]

    missing = []
    for tag in required_tags:
        if tag not in content:
            missing.append(tag)

    if missing:
        print("FAIL: Missing the following resource hints:")
        for m in missing:
            print(f"  {m}")
        sys.exit(1)

    print("PASS: All resource hints found.")
    sys.exit(0)

if __name__ == "__main__":
    check_preconnect()

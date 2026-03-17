#!/usr/bin/env python3
"""Check that 33-styleguide.html contains the Table comment, a Table section
with an H2 header and a table inside. Print a single confirmation line when
found to match test expectations.
"""
import re
import sys

path = '33-styleguide.html'
try:
    with open(path, 'r', encoding='utf-8') as f:
        s = f.read()
except Exception:
    sys.exit(0)

ok = True
# exact comment
if '<!-- Table -->' not in s:
    ok = False

# find section with header H2 'Table' and a table inside
m = re.search(r'<section>\s*<header>\s*<h2>\s*Table\s*</h2>\s*</header>\s*(.*?)</section>', s, flags=re.S)
if not m:
    ok = False
else:
    sec = m.group(1)
    if '<table' not in sec:
        ok = False

if ok:
    print('section has header and table')

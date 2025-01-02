#!/usr/bin/env python
import re
import sys

# Use pdftotext from poppler_utils to turn the PDFs to txt
filt_regex = r"Description:(?:\n| )([^:]+)\nInt(?:In|Out)Primitive?:? ?\n?(?:(\w+) = (\w+))*"

with open(sys.argv[1], "r") as f:
    text = f.read().replace("\ne:", "")

    for m in re.findall(filt_regex, text):
        value = m[2]
        name = re.sub(r"^API_", "", m[1])
        #  name = m[1]
        description = m[0].replace("\n", " ")
        print(f"{value}: {name}  # {description}")

#!/usr/bin/env python
# Script to extract various struct data from the NatalieFpCvm_v1133 and NataliePpCvm_v1133
# PDFs converted to XSLX using https://www.pdf2xl.com/

from dataclasses import dataclass
import openpyxl
import re
import sys

file_path = sys.argv[1]
column_letter = "B"
command_heading_regex = re.compile(r"^\d+\.\d+\.\d+ API_([A-Z_]+)$")

workbook = openpyxl.load_workbook(file_path)
sheet = workbook.active

commands = {}
current_command = None
column_index = openpyxl.utils.column_index_from_string(column_letter)
for row in sheet.iter_rows(min_col=column_index, max_col=column_index + 1):
    if row[0].value is None or not isinstance(row[0].value, str):
        continue

    heading_match = command_heading_regex.match(row[0].value)

    if heading_match is None:
        continue

    print(f"Found command heading: {row[0].value}")
    print(f"Processing command {heading_match.group(1)}")


@dataclass
class Command:
    name: str
    description: str
    primitive: int
    parameters: list
    is_out: bool

# S Jill Stocks, Evangelos Kontopantelis, Artur Akbarov, Sarah Rodgers, Anthony J Avery, Darren M Aschroft, 2023.

import sys, csv, re

codes = [{"code":"E00y.00","system":"readv2"},{"code":"E03..00","system":"readv2"},{"code":"E030.11","system":"readv2"},{"code":"E031.11","system":"readv2"},{"code":"E03y.00","system":"readv2"},{"code":"E03y000","system":"readv2"},{"code":"E03y100","system":"readv2"},{"code":"E03y200","system":"readv2"},{"code":"E03yz00","system":"readv2"},{"code":"E03z.00","system":"readv2"},{"code":"E04..00","system":"readv2"},{"code":"E04y.00","system":"readv2"},{"code":"E04z.00","system":"readv2"},{"code":"E0y..00","system":"readv2"},{"code":"E0z..00","system":"readv2"},{"code":"E13..00","system":"readv2"},{"code":"E1y..00","system":"readv2"},{"code":"E1z..00","system":"readv2"},{"code":"Eu04.14","system":"readv2"},{"code":"Eu05000","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('psychosis-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["nonorganic-psychosis-p13---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["nonorganic-psychosis-p13---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["nonorganic-psychosis-p13---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)

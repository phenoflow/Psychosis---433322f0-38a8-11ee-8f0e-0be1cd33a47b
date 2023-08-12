# S Jill Stocks, Evangelos Kontopantelis, Artur Akbarov, Sarah Rodgers, Anthony J Avery, Darren M Aschroft, 2023.

import sys, csv, re

codes = [{"code":"E110.00","system":"readv2"},{"code":"E110100","system":"readv2"},{"code":"E110200","system":"readv2"},{"code":"E110400","system":"readv2"},{"code":"E110600","system":"readv2"},{"code":"E111.00","system":"readv2"},{"code":"E111100","system":"readv2"},{"code":"E111200","system":"readv2"},{"code":"E111400","system":"readv2"},{"code":"E111600","system":"readv2"},{"code":"E114.00","system":"readv2"},{"code":"E114100","system":"readv2"},{"code":"E114200","system":"readv2"},{"code":"E114600","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('psychosis-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["manicdepressive-psychosis-p13---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["manicdepressive-psychosis-p13---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["manicdepressive-psychosis-p13---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)

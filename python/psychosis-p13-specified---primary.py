# S Jill Stocks, Evangelos Kontopantelis, Artur Akbarov, Sarah Rodgers, Anthony J Avery, Darren M Aschroft, 2023.

import sys, csv, re

codes = [{"code":"E03y300","system":"readv2"},{"code":"E110000","system":"readv2"},{"code":"E111000","system":"readv2"},{"code":"E114000","system":"readv2"},{"code":"E115000","system":"readv2"},{"code":"E116000","system":"readv2"},{"code":"E117.00","system":"readv2"},{"code":"E117000","system":"readv2"},{"code":"E117100","system":"readv2"},{"code":"E117200","system":"readv2"},{"code":"E117300","system":"readv2"},{"code":"E117400","system":"readv2"},{"code":"E117600","system":"readv2"},{"code":"E117z00","system":"readv2"},{"code":"E11y.00","system":"readv2"},{"code":"E11y000","system":"readv2"},{"code":"E11yz00","system":"readv2"},{"code":"E11z.00","system":"readv2"},{"code":"E11z000","system":"readv2"},{"code":"Eu04z00","system":"readv2"},{"code":"Eu23z00","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('psychosis-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["psychosis-p13-specified---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["psychosis-p13-specified---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["psychosis-p13-specified---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)

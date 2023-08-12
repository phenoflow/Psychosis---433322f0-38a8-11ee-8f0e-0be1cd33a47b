# S Jill Stocks, Evangelos Kontopantelis, Artur Akbarov, Sarah Rodgers, Anthony J Avery, Darren M Aschroft, 2023.

import sys, csv, re

codes = [{"code":"E01yz00","system":"readv2"},{"code":"E01z.00","system":"readv2"},{"code":"E030z00","system":"readv2"},{"code":"E031z00","system":"readv2"},{"code":"E110z00","system":"readv2"},{"code":"E111z00","system":"readv2"},{"code":"E114z00","system":"readv2"},{"code":"E115z00","system":"readv2"},{"code":"E116z00","system":"readv2"},{"code":"E11zz00","system":"readv2"},{"code":"E12yz00","system":"readv2"},{"code":"E12z.00","system":"readv2"},{"code":"E13yz00","system":"readv2"},{"code":"Eu10511","system":"readv2"},{"code":"Eu10514","system":"readv2"},{"code":"R001z00","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('psychosis-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["psychosis-p13-hallucinosis---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["psychosis-p13-hallucinosis---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["psychosis-p13-hallucinosis---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)

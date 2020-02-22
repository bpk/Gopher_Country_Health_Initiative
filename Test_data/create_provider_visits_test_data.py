#!/usr/bin/env python3

import csv
from faker import Faker
import secrets
import random

if __name__ == "__main__":

    fake = Faker()

    file_delimiter = '\t'
    field_names = ['ProviderId','PersonId','VisitDate','BillAmount','TypeOfService']
    list_data = []
    final_list = []

    with open('Provider_Transactions_20200214.csv','w') as new_file:
        csv_writer = csv.writer(new_file,delimiter=file_delimiter)

        csv_writer.writerow(field_names)

        for x in range(1,268):
            list_data.append(random.randrange(1,11,1))
            list_data.append(random.randrange(1,111,1))
            list_data.append(fake.date_between(start_date='-2y', end_date='today'))
            list_data.append(random.randrange(1,50000,1)/100)
            list_data.append(secrets.choice(["Emergency Room","Outpatient Surgery","Exam","Physical Therapy","Lab Work","Medication"]))

            csv_writer.writerow(list_data)
            list_data = []
        print('File saved')


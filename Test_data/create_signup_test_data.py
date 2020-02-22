#!/usr/bin/env python3

import csv
from faker import Faker
import random
import secrets

if __name__ == "__main__":

    fake = Faker()

    file_delimiter = ','
    field_names = ['first_name','last_name','address1','city','state','zip5','zip4','county',
        'TIN','date_of_birth','annual_income','gender','signup_date','health_insurance']
    list_data = []
    final_list = []

    with open('GCHI_Signup_20200214.csv','w') as new_file:
        csv_writer = csv.writer(new_file,delimiter=file_delimiter)

        csv_writer.writerow(field_names)

        for x in range(1,111):
            gender = secrets.choice(["Male","Female"])
            if gender == "Male":
                list_data.append(fake.first_name_male())
            else:
                list_data.append(fake.first_name_female())
            list_data.append(fake.last_name())
            list_data.append(fake.street_address())
            list_data.append(fake.city())
            list_data.append('MN')
            list_data.append(fake.zipcode_in_state(state_abbr='MN'))
            list_data.append(fake.zipcode_plus4()[-4:])
            list_data.append(secrets.choice(["Brown","Dodge",'Goodhue','Kanabec','Sibley','Steele','Waseca','Wabasha','Houston']))
            list_data.append(fake.ssn(taxpayer_identification_number_type='SSN').replace('-',''))
            list_data.append(fake.date(pattern='%Y-%m-%d', end_datetime=None))
            list_data.append(random.randrange(1,7500000,1)/100)
            list_data.append(gender)
            list_data.append(fake.date_between(start_date='today', end_date='today')),
            list_data.append(secrets.choice(["PMAP","MSCPlus",'SingleCare','SharedCare','SeniorCare','AbilityCare','MinnesotaCare']))
            csv_writer.writerow(list_data)
            list_data = []
        print('File saved')


#!/usr/bin/env python3

import csv
from faker import Faker
import secrets
import random

if __name__ == "__main__":

    fake = Faker()

    file_delimiter = '|'
    quote_char = '"'
    field_names = ['Name','City']
    list_data = []
    final_list = []

    with open('Providers_20200214.csv','w') as new_file:
        csv_writer = csv.writer(new_file,delimiter=file_delimiter,quotechar=quote_char,
            quoting=csv.QUOTE_ALL)

        csv_writer.writerow(field_names)

        #for x in range(1,268):
        list_data = ['Dr. Cardiology','Mora']
        csv_writer.writerow(list_data)
        list_data = []
        list_data = ['Dr. Sleepy','Rochester']
        csv_writer.writerow(list_data)
        list_data = []
        list_data = ['Dr. PA','La Crosse']
        csv_writer.writerow(list_data)
        list_data = []
        list_data = ['Dr. Dermatology','Owatonna']
        csv_writer.writerow(list_data)
        list_data = []
        list_data = ['Dr. Radiology','Red Wing']
        csv_writer.writerow(list_data)
        list_data = []
        list_data = ['Dr. Family','Kenyon']
        csv_writer.writerow(list_data)
        list_data = []
        list_data = ['Dr. Neurology','Wabasha']
        csv_writer.writerow(list_data)
        list_data = []
        list_data = ['Dr. ENT','Mora']
        csv_writer.writerow(list_data)
        list_data = []
        list_data = ['Dr. Orthopedics','Rochester']
        csv_writer.writerow(list_data)
        list_data = []
        list_data = ['Dr. Oncology','Owatonna']
        csv_writer.writerow(list_data)
        list_data = []
        list_data = ['Dr. Genetics','Mora']
        csv_writer.writerow(list_data)
        list_data = []


        print('File saved')


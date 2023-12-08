


import pandas as pd
df = pd.read_excel("test.xlsx",sheet_name="Sheet1", header=0)
#print(df)

def get_age(name):
    df = pd.read_excel("test.xlsx",sheet_name="Sheet1",header=0)
    print("hello")
    rows, cols=df[df['name']==name].shape
    if rows==1:
         age = df[df['name']==name]['age'][0]
         return age
    else:
        return -1


print(get_age("Ram"))




import pandas as pd
def get_age(name):

    df = pd.read_excel("test.xlsx", sheet_name="Sheet1", headers=True)
    print("*"*20)
    print(df)
    print("*"*20)
    rows, cols = df[df['Name']==name].shape
    print(rows, cols, "^^^")
    if rows==1:
       age = df[df['Name']==name]['Age'][0]
       return age
    else:
	return -1

def get_all_above_age(age):
    df = pd.read_excel("test.xlsx", sheet_name="Sheet1", headers=True)
    df_filter = df[(df['Profession'].str.contains("Developer")) & (df['Age']>age)]
    print("&&&&&&&&&&&&&&")
    print(df_filter)
    print("&&&&&&&&&&&&&&")
    return df_filter.to_json(orient='record')

def get_2_values(name):
    return (name,str(get_age(name)))

if __name__=='__main__':
    print(get_age("Ram"))
    print(get_all_above_age(25))
    print(get_2_values("Ram"))

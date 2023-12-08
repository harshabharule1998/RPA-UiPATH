
import pandas as pd
df = pd.read_excel("test.xlsx")
print(df)
def get_age(name):
    df = pd.read_excel("test.xlsx")
    print("*"*20)

    print("*"*20)
    rows, cols = df[df['Name']==name].shape
    print(rows, cols, "rows and column")
    if rows==1:
       age = df[df['Name']==name]['Age'][0]
       return age
    else:
       return -1


def get_2_values(name):
    return (name,str(get_age(name)))


    print(get_age("Ram"))
  #  print(get_all_above_age(25))
    print(get_2_values("Ram"))

import pandas as pd

data = {
    "Block": ["Block1"],
    "Temporary_Variables": [1]
}

df = pd.DataFrame(data)

threshold = 3

df["Is_Temp_Heavy"] = df["Temporary_Variables"] > threshold

print("\nTemporary Variable Analysis\n")
print(df)
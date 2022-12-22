import pandas as pd
import time
import bodo
@bodo.jit(cache=True)
def load_data_bodo(filename):
    start=time.time()
    df=pd.read_csv(filename)
    gdf=df.groupby(["member_casual"],as_index=False)["ride_id"].count()
    print(f"time to run query {time.time()-start}")
    return gdf
df=load_data_bodo("data/202004-divvy-tripdata.csv")
print(df.head())

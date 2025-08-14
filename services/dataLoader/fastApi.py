from fastapi import FastAPI
from services.dataLoader.DAL import DAL

app = FastAPI()
dal = DAL()

@app.get("/data")
def get_data():
    return {"data": dal.get_all_data()}

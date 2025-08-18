
from fastapi import FastAPI

from services.DAL import Animals

app = FastAPI()
animals = Animals()

@app.get("/get")
def read_root():
    return {'animals': animals.get_all_data()}

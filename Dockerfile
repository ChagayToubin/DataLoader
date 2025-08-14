# Use Alpine Linux as base image
FROM python:3.11-slim

WORKDIR /dataLoader



COPY requirements.txt .


RUN pip install --no-cache-dir -r requirements.txt

COPY . .


EXPOSE 8000

CMD ["uvicorn", "services.dataLoader.fastApi:app" ,"--reload"]

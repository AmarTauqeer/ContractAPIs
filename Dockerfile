FROM python:3.9.5
WORKDIR /ContractAPIs

COPY . /ContractAPIs
RUN pip install -r requirements.txt
COPY . /ContractAPIs
CMD ["python", "app.py" ]


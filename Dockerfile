# FROM tiangolo/uwsgi-nginx-flask:python3.8-2020-12-19
FROM python:3.9.5
WORKDIR /ContractAPIs

COPY . /ContractAPIs
RUN pip install -r requirements.txt
COPY . /ContractAPIs
CMD ["python", "app.py" ]


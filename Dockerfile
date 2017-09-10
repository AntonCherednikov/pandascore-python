FROM python:alpine

WORKDIR /app/
ADD . /app/pypandascore

WORKDIR /app/pypandascore
RUN python3 setup.py install
RUN pip3 install -U -r requirements.txt
RUN pip3 install -U -r test-requirements.txt

CMD python3 -m pytest tests

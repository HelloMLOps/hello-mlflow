FROM continuumio/miniconda3
RUN apt update && apt install python3-mysqldb default-libmysqlclient-dev  -yq
RUN pip install mlflow==1.25.1
RUN pip install protobuf==3.20
# FOR AWS
RUN pip install boto3==1.22.9
#FOR GCP
RUN pip install google-cloud==0.34.0
RUN pip install google-cloud-storage==2.3.0
#FOR AZURE
RUN pip install azure-storage-blob==12.11.0
RUN pip install azure-identity==1.10.0
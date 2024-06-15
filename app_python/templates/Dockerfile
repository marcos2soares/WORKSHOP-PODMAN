FROM registry.redhat.io/ubi8/python-36
MAINTAINER Marcos Soares  
COPY . /app
WORKDIR /app
RUN pip install  --no-index --find-links=flask/ -r requirements.txt
ENTRYPOINT ["python"]
CMD ["app.py"]

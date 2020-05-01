FROM python:3.6
WORKDIR /app
COPY requirements.txt /app
RUN pip install -r ./requirements.txt
COPY resnet50.py /app
EXPOSE 8008
# EXPOSE 5000
CMD ["python", "-u", "resnet50.py"]~
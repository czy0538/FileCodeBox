FROM python:3.9.5-slim-buster
LABEL author="Lan"
LABEL email="vast@tom.com"
LABEL version="1.5.6.2"


COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt -i https://pypi.tuna.tsinghua.edu.cn/simple/
EXPOSE 12345
CMD ["python","main.py"]
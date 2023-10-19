FROM python:3 
WORKDIR /docker
RUN pip install flask
RUN pip freeze >requirements.txt
RUN pip install -r requirements.txt
COPY . .
EXPOSE 5000 
CMD [ "python3", "app.py" ] 


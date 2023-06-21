FROM python:3.11.4-slim

WORKDIR /usr/src/app

#copy all the files to the container 
COPY requirements.txt /usr/src/app/

# install dependencies
RUN pip install --no-cache-dir -r requirements.txt

COPY hello.py /usr/src/app/

# port we will use needs to be exposed
EXPOSE 5000

# how to run command python ./app.py
CMD ["python3", "-m", "flask", "--app", "hello", "run", "--host=0.0.0.0"]
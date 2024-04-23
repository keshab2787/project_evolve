#use an official Python runtime as a parent image
FROM python:3.9

#set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# set work directory
WORKDIR /usr/src/app

#install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# copy project files
COPY . .

# expose port 8000
EXPOSE 8000

# run Django development server
CMD ["python", "manage.py", "runserver", "0.0.0:8000"]

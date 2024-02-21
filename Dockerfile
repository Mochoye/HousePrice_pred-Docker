FROM python:3.7 
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
CMD ["gunicorn", "--workers=4", "--bind", "80:${PORT}", "app:app"]

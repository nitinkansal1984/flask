FROM python:3.8.2-alpine3.11
ENV PORT 5000
EXPOSE 5000
WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

ENTRYPOINT ["python"]
CMD ["app.py"]

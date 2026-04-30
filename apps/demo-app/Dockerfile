FROM python:3.12-alpine

WORKDIR /app

COPY app.py .

RUN addgroup -S appgroup && adduser -S -u 1001 appuser -G appgroup

USER 1001

EXPOSE 8080

CMD ["python", "app.py"]

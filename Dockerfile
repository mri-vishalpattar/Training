FROM python:3.11-slim AS build
WORKDIR /app
COPY sample.py .


FROM gcr.io/distroless/python3 as prod
WORKDIR /app
COPY --from=build /app/sample.py .
CMD ["sample.py"]
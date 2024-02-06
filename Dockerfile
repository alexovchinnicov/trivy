FROM aquasec/trivy:latest

LABEL Description="Custom Trivy image with pre-downloaded bases"

RUN trivy image --download-db-only
RUN trivy fs --download-java-db-only

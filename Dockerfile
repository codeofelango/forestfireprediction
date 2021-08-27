# lightweight python
FROM python:3.8-slim


# Copy local code to the container image.
ENV APP_HOME /app
WORKDIR $APP_HOME
COPY . ./

RUN ls -la $APP_HOME/


# Install dependencies
RUN pip install -r requirements.txt

ENV PORT 5000

# Run the flask service on container startup
#CMD exec gunicorn --bind :$PORT --workers 1 --threads 8 ComplaintsServer
CMD [ "python", "app.py" ]

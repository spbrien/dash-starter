FROM python:3

WORKDIR /usr/src/app


# RUN pip install nltk
# RUN python -m nltk.downloader all

COPY requirements.txt /usr/src/requirements.txt
RUN pip install --no-cache-dir -r /usr/src/requirements.txt

EXPOSE 8050

CMD [ \
    "python", \ 
    "app.py" \
]

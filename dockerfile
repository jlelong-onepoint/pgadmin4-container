FROM python:3.7

RUN wget https://ftp.postgresql.org/pub/pgadmin/pgadmin4/v4.12/pip/pgadmin4-4.12-py2.py3-none-any.whl \
   && pip install ./pgadmin4-4.12-py2.py3-none-any.whl \
   && mkdir /var/lib/pgadmin /var/log/pgadmin \
   && chmod a+w /var/lib/pgadmin /var/log/pgadmin

COPY config_local.py /usr/local/lib/python3.7/site-packages/pgadmin4/config_local.py

EXPOSE 5050

ENTRYPOINT ["python", "/usr/local/lib/python3.7/site-packages/pgadmin4/pgAdmin4.py"]

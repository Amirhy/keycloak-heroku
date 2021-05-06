FROM jboss/keycloak:latest

COPY docker-entrypoint.sh /opt/jboss/tools
COPY realm-export.json /tmp/my_realm.json

ENV KEYCLOAK_IMPORT /tmp/my_realm.json
ENV KEYCLOAK_MIGRATION_STRATEGY OVERWRITE_EXISTING

ENTRYPOINT [ "/opt/jboss/tools/docker-entrypoint.sh" ]
CMD ["-b", "0.0.0.0"]


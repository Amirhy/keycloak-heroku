FROM jboss/keycloak:latest

COPY docker-entrypoint.sh /opt/jboss/tools
COPY realm-export.json opt/jboss/keycloak/imports/realm-export.json

ENTRYPOINT [ "/opt/jboss/tools/docker-entrypoint.sh" ]
CMD ["-b", "0.0.0.0"]


FROM jboss/keycloak:latest

COPY docker-entrypoint.sh /opt/jboss/tools
COPY import-realm.json /opt/jboss/keycloak/


ENTRYPOINT [ "/opt/jboss/tools/docker-entrypoint.sh" ]
CMD ["-b", "0.0.0.0","-Dkeycloak.import=/opt/jboss/keycloak/import-realm.json"]

FROM dfranssen/keycloak-import-realm

#COPY docker-entrypoint.sh /opt/jboss/tools
#COPY realm-export.json /opt/jboss/realm-export.json
ADD realm-export.json /opt/jboss/keycloak/

ENTRYPOINT [ "/opt/jboss/tools/docker-entrypoint.sh" ]
CMD ["-b", "0.0.0.0"]


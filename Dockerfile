FROM existdb/existdb:latest
#FROM stadlerpeter/existdb

# adding expath packages to the autodeploy directory
ADD http://exist-db.org/exist/apps/public-repo/public/functx-1.0.xar ${EXIST_HOME}/autodeploy/
ADD http://exist-db.org/exist/apps/public-repo/public/expath-crypto-exist-lib-0.6.xar ${EXIST_HOME}/autodeploy/
#ADD http://exist-db.org/exist/apps/public-repo/public/exist-sparql-0.1-SNAPSHOT.xar ${EXIST_HOME}/autodeploy/

# update application root with custom controller-config.xml
COPY controller-config.xml ${EXIST_HOME}/webapp/WEB-INF/
COPY conf.xml ${EXIST_HOME}/

#RUN ./srophe/ant 
#COPY srophe/build/*.xar ${EXIST_HOME}/autodeploy/
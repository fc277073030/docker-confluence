FROM atlassian/confluence-server:latest
USER root
COPY atlassian-agent.jar /opt/atlassian/confluence/
ENV JAVA_OPTS="-javaagent:/opt/atlassian/confluence/atlassian-agent.jar ${JAVA_OPTS}"

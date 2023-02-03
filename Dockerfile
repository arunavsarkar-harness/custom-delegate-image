FROM harness/delegate:23.01.78102.minimal

#USER root

#RUN microdnf update \  
#  && microdnf install --nodocs \  
#    unzip \  
#    Yum-utils
    
RUN mkdir /opt/harness-delegate/tools && cd /opt/harness-delegate/tools \  
  && curl -LO "<https://dl.k8s.io/release/$(curl> -L -s<https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl>" && chmod +x kubectl


ENV PATH=/opt/harness-delegate/tools/:$PATH

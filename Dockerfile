FROM harness/delegate:23.01.78102.minimal

#USER 0

#RUN microdnf update 
 # && microdnf install --nodocs
  
#RUN microdnf update \  
#  && microdnf install --nodocs \  
#    unzip \  
#    Yum-utils
    
RUN mkdir /opt/harness-delegate/tools && cd /opt/harness-delegate/tools \  
  && curl -LO https://dl.k8s.io/release/v1.26.0/bin/linux/amd64/kubectl \
  && chmod +x kubectl

#USER 1001

ENV PATH=/opt/harness-delegate/tools/:$PATH

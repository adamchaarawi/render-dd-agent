FROM datadog/agent:7

ENV DD_AUTOCONFIG_FROM_ENVIRONMENT=false
ENV DD_SITE=datadoghq.com

ENV NON_LOCAL_TRAFFIC=true
ENV DD_LOGS_STDOUT=yes

ENV DD_APM_ENABLED=true
ENV DD_APM_NON_LOCAL_TRAFFIC=true
ENV DD_LOG_LEVEL=debug

ENV DD_TRACE_ENABLED=true
ENV DD_PROFILING_ENABLED=true

ENV DD_DOGSTATSD_NON_LOCAL_TRAFFIC=true
ENV DD_PROCESS_AGENT_ENABLED=true

# Automatically set by Render
ARG RENDER_SERVICE_NAME=datadog

ENV DD_BIND_HOST=$RENDER_SERVICE_NAME
ENV DD_HOSTNAME=$RENDER_SERVICE_NAME

docker run -it --rm --name dd-poc \
 -p 10801:8080 \
 -e DD_APM_ENABLED=true \
 -e DD_PROFILING_ENABLED=true \
 -e DD_LOGS_ENABLED=true \
 -e DD_LOGS_INJECTION=true \
 -e DD_LOGS_CONFIG_CONTAINER_COLLECT_ALL=true \
 -e DD_SITE="datadoghq.eu" \
 -e DD_SERVICE=datadog-demo-run-dotnet \
 -e DD_ENV=datadog-demo \
 -e DD_VERSION=1 \
 -e DD_API_KEY=${DD_API_KEY} \
 -e DD_LOGS_DIRECT_SUBMISSION_INTEGRATIONS=ILogger \
 dd-poc
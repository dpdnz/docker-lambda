FROM mlupin/docker-lambda:nodejs14.x-arm64

FROM mlupin/docker-lambda:build-arm64

ENV PATH=/var/lang/bin:$PATH \
  LD_LIBRARY_PATH=/var/lang/lib:$LD_LIBRARY_PATH \
  AWS_EXECUTION_ENV=AWS_Lambda_nodejs14.x \
  AWS_EXECUTION_ARCH=arm64 \
  NODE_PATH=/opt/nodejs/node14/node_modules:/opt/nodejs/node_modules:/var/runtime/node_modules

COPY --from=0 /var/runtime /var/runtime
COPY --from=0 /var/lang /var/lang
COPY --from=0 /var/rapid /var/rapid

# Add these as a separate layer as they get updated frequently
RUN pipx install awscli==1.* && \
  pipx install aws-lambda-builders==1.2.0 && \
  pipx install aws-sam-cli==1.15.0

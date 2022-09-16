%*ENV<DOCKER> || die "DOCKER env var not set";

task-run ".tom/tasks/stop-docker", %(
  name => %*ENV<DOCKER>
);

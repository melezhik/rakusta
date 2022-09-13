%*ENV<DOCKER> || die "DOCKER env var not set";

task-run ".tom/tasks/run-docker", %(
  name => %*ENV<DOCKER>
);

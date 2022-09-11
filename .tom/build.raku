my $repo = config()<rakudo><repo>;
my $dir = "repo";

directory $dir;

git-scm $repo, %(
  to => $dir
);

task-run ".tom/tasks/build", %(
  dir => $dir
);

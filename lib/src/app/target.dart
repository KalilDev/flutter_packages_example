class Target {
  final RunningPlatform platform;
  final ExecutionMode mode;

  Target(this.platform, this.mode);
}

enum ExecutionMode { debug, profile, release }

enum RunningPlatform { linux, android, web }

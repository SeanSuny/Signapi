module.exports = {
  apps: [
    {
      name: "app",
      cwd: "./",
      script: "python3",
      args: "signapi.py",
      watch: true,
      watch_delay: 1000
    }
  ]
}
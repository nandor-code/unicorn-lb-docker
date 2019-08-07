# Unicorn LoadBalancer Docker Image 

## Description
What is **[UnicornFFMPEG](https://github.com/UnicornTranscoder/UnicornFFMPEG)**?

This software is a part of UnicornTranscoder project, it's a binary to replace the official Plex Transcoder, the binary will save parameters in your Redis database, the data will be used by UnicornTranscoder.

### Features
- Automatic installation using environment variables.
- No root processes. Never.

### Environment variables

- Same as in Plex
- Same as in Pass Any UnicornLB Variables via create_docker.sh

### Volumes
- Same as in Plex
- Plex Media Storage

### Port

- 0.0.0.0:3001

### Installation
* Edit create_docker.sh to match your network needs
* Do all the other setup steps for **[UnicornTranscoder](https://github.com/UnicornTranscoder/UnicornTranscoder)**
* $ sh create_docker.sh

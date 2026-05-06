# Home Lab Server

What started as a Plex media server has grown into a hands-on exercise 
in virtualization, containerization, and system monitoring.

## Overview

This home lab runs on Ubuntu Server 24.04 LTS inside VirtualBox, 
managed entirely through the terminal and accessed remotely via SSH.

## Architecture

The lab is organized into two Docker stacks:

### Media Stack (`/plex`)
- **Plex** — self-hosted media streaming server
- **Portainer** — container management dashboard
- **Heimdall** — unified service homepage

### Monitoring Stack (`/monitoring`)
- **Prometheus** — metrics collection and storage
- **Node Exporter** — hardware and OS metrics agent
- **Grafana** — metrics visualization and dashboards

## Prerequisites
- VirtualBox
- Ubuntu Server 24.04 LTS
- Docker and Docker Compose

## Setup

### 1. Clone the repo
git clone https://github.com/wasabi-ed/homelab.git
cd homelab

### 2. Start the media stack
cd plex
docker compose up -d

### 3. Start the monitoring stack
cd ../monitoring
docker compose up -d

## Services and Ports

| Service | Port | URL |
|---|---|---|
| Plex | 32400 | http://server-ip:32400/web |
| Portainer | 9000 | http://server-ip:9000 |
| Heimdall | 8080 | http://server-ip:8080 |
| Prometheus | 9090 | http://server-ip:9090 |
| Grafana | 3000 | http://server-ip:3000 |

## Skills Demonstrated
- Linux server administration
- SSH remote access
- Docker and Docker Compose
- Multi-container orchestration
- Infrastructure as Code
- System monitoring and observability
- Version control with Git

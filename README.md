## Cheat Sheet

### 🐙 Git Shortcuts

| Alias | Command | Description |
| :--- | :--- | :--- |
| `g` | `git` | Short for git. |
| `gs` | `git status` | Show the working tree status. |
| `ga` | `git add` | Add file contents to the index. |
| `gaa` | `git add .` | Add all changes to the staging area. |
| `gc` | `git commit -m` | Commit changes with a message. |
| `gp` | `git push` | Push changes to the remote repository. |
| `gl` | `git pull` | Fetch and merge changes from remote. |
| `gd` | `git diff` | Show changes between commits/working tree. |
| `gco` | `git checkout` | Switch branches or restore working tree files. |
| `gb` | `git branch` | List, create, or delete branches. |
| `glog` | `git log --graph --oneline --decorate --all` | **Pretty Log:** View history as a colorful graph. |
| `gundo` | `git reset --soft HEAD~1` | **Undo:** Cancel last commit but keep changes staged. |

### 🐳 Docker Shortcuts

| Alias | Command | Description |
| :--- | :--- | :--- |
| `d` | `docker` | Short for docker. |
| `dc` | `docker-compose` | Short for docker-compose. |
| `dcu` | `docker-compose up -d` | Start services in the background. |
| `dcd` | `docker-compose down` | Stop and remove containers/networks. |
| `dcl` | `docker-compose logs -f` | Follow log output. |
| `dcr` | `docker-compose restart` | Restart services. |
| `dps` | `docker ps --format "table {{.ID}}\t{{.Names}}..."` | **Clean List:** Show active containers in a readable table. |
| `dpsa` | `docker ps -a` | Show all containers (active & inactive). |
| `dprune` | `docker system prune -f` | **Cleanup:** Remove unused data (stopped containers, networks). |
| `drm_exited` | `docker rm $(docker ps -a -q -f status=exited)` | **Cleanup:** Remove only containers with "Exited" status. |

### 🛠️ General Utilities

| Alias | Command | Description |
| :--- | :--- | :--- |
| `ll` | `ls -alF` | List all files with details and hidden files. |
| `la` | `ls -A` | List all files except `.` and `..`. |
| `l` | `ls -CF` | List files in columns. |
| `..` | `cd ..` | Go back one directory. |
| `...` | `cd ../..` | Go back two directories. |
| `c` | `clear` | Clear the terminal screen. |
| `h` | `history` | Show command history. |
| `port` | `lsof -i :<port>` | **Check Port:** See what process is running on a port (e.g. `port 8080`). |

# Print "Hello world" to http://localhost:50000.
## 1.  python app.py
### Test
http://localhost:50000
## 2.  Run from Dockerfile
docker build -t mmhello .
docker run -p 5000:5000 mmhello
or
docker run -it -p 5000:5000 mmhello /bin/bash
python app.py 
### Test
http://localhost:50000

## 3.  Run from docker-compose.yml
docker-compose up

### 4. Run from kubernetes.(kubectl)


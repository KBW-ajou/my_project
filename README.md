<<<<<<< HEAD
# CJ_Project

## How to Run the Project using Docker

### 1. Build the Docker Image

1. Docker가 설치되어 있는지 확인합니다. Docker가 설치되어 있지 않다면 [Docker 설치 가이드](https://docs.docker.com/get-docker/)를 참고하여 설치합니다.
2. 프로젝트 루트 디렉토리로 이동한 후 다음 명령어를 실행하여 Docker 이미지를 빌드합니다:
    ```sh
    docker build -t my_project_image .
    ```
## Dockerfile

이 프로젝트는 Docker를 사용하여 실행됩니다. Dockerfile은 다음과 같은 작업을 수행합니다:

1. Ubuntu 최신 버전을 기본 이미지로 사용합니다.
2. Python 3 및 pip를 설치합니다.
3. Jupyter Notebook을 설치합니다.
4. Python 가상 환경을 생성하고 활성화합니다.
5. 필요한 Python 종속성을 설치합니다.
6. 프로젝트 파일을 복사합니다.
7. Jupyter Notebook 포트(8888)를 노출합니다.
8. Jupyter Notebook 서버를 시작합니다.

Dockerfile을 사용하여 프로젝트를 실행하려면, 위의 지침을 따라 Docker 이미지를 빌드하고 컨테이너를 실행하십시오.

### 2. Run the Docker Container

1. 프로젝트 루트 디렉토리에서 다음 명령어를 실행하여 Docker 컨테이너를 실행합니다:
    ```sh
    docker run -it -v $(pwd):/app -p 8888:8888 my_project_image
    ```
    - `-v $(pwd):/app`: 현재 디렉토리를 컨테이너의 `/app` 디렉토리에 마운트합니다.
    - `-p 8888:8888`: 호스트의 포트 8888을 컨테이너의 포트 8888에 매핑합니다.

2. 명령어를 실행하면 Jupyter Notebook 서버가 시작되고, 터미널에 접속 링크가 표시됩니다.

### 3. Access Jupyter Notebook

1. 터미널에 표시된 링크를 복사하여 브라우저에 붙여넣습니다. 
    ```
    http://127.0.0.1:8888/?token=http://127.0.0.1:8888/tree?token=dcbd3fc5670983180135daf425911a7fe582ef9bfd6fe76f
    ```

2. Jupyter Notebook이 열리면, 노트북 파일을 열어 코드를 실행할 수 있습니다.

## Project Overview

- 이 프로젝트는 다차종 배송 VRP 문제를 해결하기 위해 개발되었습니다.
- Python으로 작성되었으며, Docker 환경에서 실행됩니다.

## Project Structure

- `README.md` : 프로젝트 문서 파일입니다.
- `Dockerfile` : Docker 설정 파일입니다.
- `requirements.txt` : 프로젝트 실행을 위해 필요한 Python 의존성 파일입니다.

## Dependencies

이 프로젝트는 다음 Python 패키지를 필요로 합니다:
- pandas
- matplotlib
- scikit-learn
- jupyter

## Example Usage

1. Jupyter Notebook을 엽니다.
2. `main.ipynb` 노트북 파일을 실행합니다.
3. `Order_Result.csv` 및 `Veh_Result.csv` 결과 파일을 확인합니다.

## Contact

질문이나 문제가 있을 경우 [monkey99@ajou.ac.kr](mailto:monkey99@ajou.ac.kr)으로 연락해 주세요.
=======
# CJ_project

## How to Run the Project using Docker

1. **Build the Docker image**

   ```bash
   docker build -t my_project_image .

## Run the Docker container
docker run -it --name my_project_container -p 8888:8888 my_project_image
>>>>>>> dff61d3ac28914df078e0f7df3b46fbb6b69f662

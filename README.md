# Mesoor 推荐系统

### 本地部署
在本地部署整套系统。整套系统启动大概需要几分钟。
#### 环境要求
Docker Engine >= 19.03.4
docker-compose >= 1.24.1
#### 步骤
1. 设置环境变量（必须）
 - `AWS_ACCESS_KEY_ID`: AWS 的 KEY （下载镜像及数据用）
 - `AWS_SECRET_ACCESS_KEY`: AWS 的 SECRET（下载镜像及数据用）
 - `KAFKA_DATA_PATH`: Kafka 数据存储文件夹
 - `MILVUS_DATA_PATH`: Milvus 数据存储文件夹
 - `ES_DATA_PATH`: ES 数据存储文件夹，需要充分的权限，权限可以设置为`777`
 - `PG_DATA_PATH`: Postgres 数据存储文件夹
 - `MESOOR_RECOMMENDATION_SERVER_PORT`: 服务端口，默认为`50051`

2. 登录 AWS 的镜像仓库
    ```shell script
    aws ecr get-login-password --region cn-northwest-1 | docker login --username AWS --password-stdin 722740969534.dkr.ecr.cn-northwest-1.amazonaws.com.cn/match-local
    ```
3. 如果是第一次执行，下载依赖文件：执行 `download.sh`；如果不是第一次执行，忽略此步骤。
4. 执行 `deploy.sh`
5. 执行 `docker ps` 查看运行状况
6. 如果发现 elasticsearch 没有成功启动，有可能是权限不足的问题。需要执行 `sudo chmod -R 777 $ES_DATA_PATH`
#### 完整例子:
```shell script
AWS_ACCESS_KEY_ID=foo \
AWS_SECRET_ACCESS_KEY=bar \
KAFKA_DATA_PATH=./kafka-data \
MILVUS_DATA_PATH=./milvus-data \
ES_DATA_PATH=./es-data \
PG_DATA_PATH=./pg-data \
sh deploy.sh
```
#### 停止
```shell script
sh stop.sh
```
#### 使用方法
使用 Mesoor Recommendation SDK 即可调用服务
* [Python SDK](https://github.com/nadileaf/mesoor-recommendation-python-sdk)

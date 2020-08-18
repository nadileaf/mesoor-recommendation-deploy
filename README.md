# Mesoor 推荐系统

#### 本地部署
在本地部署整套系统。整套系统启动大概需要几分钟。
* 步骤
    1. 设置环境变量（必须）  
    `AWS_ACCESS_KEY_ID`: AWS 的 KEY （下载镜像及数据用）  
    `AWS_SECRET_ACCESS_KEY`: AWS 的 SECRET（下载镜像及数据用）  
    `ALIYUN_USERNAME`: 阿里云的用户名（下载镜像用）  
    `ALIYUN_PASSWORD`: 阿里云的密码 （下载镜像用）  
    `KAFKA_DATA_PATH`: Kafka 数据存储文件夹  
    `MILVUS_DATA_PATH`: Milvus 数据存储文件夹  
    `ES_DATA_PATH`: ES 数据存储文件夹，需要充分的权限，权限可以设置为`777`  
    `PG_DATA_PATH`: Postgres 数据存储文件夹
      
    2. 登录 AWS 及阿里云的镜像仓库
        ```shell script
        docker login --username=$ALIYUN_USERNAME --password=$ALIYUN_PASSWORD registry.cn-hangzhou.aliyuncs.com
        $(aws ecr get-login --no-include-email --region cn-northwest-1)
        ```
    3. 执行 `deploy.sh`  
* 完整例子: 
    ```shell script
    AWS_ACCESS_KEY_ID=foo \
    AWS_SECRET_ACCESS_KEY=bar \ 
    ALIYUN_USERNAME=foo \
    ALIYUN_PASSWORD=bar \
    KAFKA_DATA_PATH=./kafka-data \
    MILVUS_DATA_PATH=./milvus-data \
    ES_DATA_PATH=./es-data \
    PG_DATA_PATH=./pg-data \
    sh deploy.sh
    ```
* 停止
    ```shell script
    sh stop.sh
    ```
 
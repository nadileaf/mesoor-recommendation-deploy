# AWS
export AWS_ACCESS_KEY_ID=${AWS_ACCESS_KEY_ID:-<aws_access_key_id>}
export AWS_SECRET_ACCESS_KEY=${AWS_SECRET_ACCESS_KEY:-<aws_secret_access_key>}
export AWS_DEFAULT_REGION=${AWS_DEFAULT_REGION:-cn-northwest-1}
export AWS_DOCKER_REGISTRY=${AWS_DOCKER_REGISTRY:-722740969534.dkr.ecr.cn-northwest-1.amazonaws.com.cn}

# aliyun
export ALIYUN_DOCKER_REGISTRY=${ALIYUN_DOCKER_REGISTRY:-registry.cn-hangzhou.aliyuncs.com/mesoor-ai}
export ALIYUN_USERNAME=${ALIYUN_USERNAME:-<aliyun_username>}
export ALIYUN_PASSWORD=${ALIYUN_PASSWORD:-<aliyun_password>}

# data directory path
export KAFKA_DATA_PATH=${KAFKA_DATA_PATH:-./kafka_data}
export MILVUS_DATA_PATH=${MILVUS_DATA_PATH:-./milvus_data}
export ES_DATA_PATH=${ES_DATA_PATH:-./es_data}
export PG_DATA_PATH=${PG_DATA_PATH:-./pg_data}

# models
export READER_MODEL_VERSION=${READER_MODEL_VERSION:-joint_mrc_2020_08_06}
export POSITION_FILTER_MODEL_VERSION=${POSITION_FILTER_MODEL_VERSION:-position_filter_best_model-0331}
export CLS_MODEL_VERSION=${CLS_MODEL_VERSION:-jd_cls_model-0412}
export CANDIDATE_POLY_ENCODER_MODEL_PATH=${CANDIDATE_POLY_ENCODER_MODEL_PATH:-s3://mesoor-models/candidate-embedding/poly-encoders/result_under_graduate_0722_0301}

# image version
export BIFURCAN_VERSION=${BIFURCAN_VERSION:-v0.0.6}
export FUSION_VERSION=${FUSION_VERSION:-BUILD-3.0.0-95806c6}
export PREDATOR_VERSION=${PREDATOR_VERSION:-BUILD-3.0.0-72e1b4b}
export MESOOR_RECOMMENDATION_VERSION=${MESOOR_RECOMMENDATION_VERSION:-latest}
export RESUME_INDEXER_VERSION=${RESUME_INDEXER_VERSION:-milvus}
export POLY_ENCODERS_VERSION=${POLY_ENCODERS_VERSION:-latest}

export COMPOSE_PARALLEL_LIMIT=10

docker-compose -f docker-compose.yml up -d

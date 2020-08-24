# AWS
export AWS_ACCESS_KEY_ID=${AWS_ACCESS_KEY_ID:-<your_aws_access_key_id>}
export AWS_SECRET_ACCESS_KEY=${AWS_SECRET_ACCESS_KEY:-<your_aws_secret_access_key>}
export AWS_DEFAULT_REGION=${AWS_DEFAULT_REGION:-cn-northwest-1}
export AWS_DOCKER_REGISTRY=${AWS_DOCKER_REGISTRY:-722740969534.dkr.ecr.cn-northwest-1.amazonaws.com.cn}

# aliyun
# export ALIYUN_DOCKER_REGISTRY=${ALIYUN_DOCKER_REGISTRY:-registry.cn-hangzhou.aliyuncs.com/mesoor-ai}
# export ALIYUN_USERNAME=${ALIYUN_USERNAME:-<aliyun_username>}
# export ALIYUN_PASSWORD=${ALIYUN_PASSWORD:-<aliyun_password>}

# data directory path
export KAFKA_DATA_PATH=${KAFKA_DATA_PATH:-./kafka_data}
export MILVUS_DATA_PATH=${MILVUS_DATA_PATH:-./milvus_data}
export ES_DATA_PATH=${ES_DATA_PATH:-./es_data}
export PG_DATA_PATH=${PG_DATA_PATH:-./pg_data}
export BIFURCAN_DATA_PATH=${BIFURCAN_DATA_PATH:-./bifurcan_data}

# models
export READER_MODEL_VERSION=${READER_MODEL_VERSION:-joint_mrc_2020_08_06}
export POSITION_FILTER_MODEL_VERSION=${POSITION_FILTER_MODEL_VERSION:-position_filter_best_model-0331}
export CLS_MODEL_VERSION=${CLS_MODEL_VERSION:-jd_cls_model-0412}
export CANDIDATE_POLY_ENCODER_MODEL_PATH=${CANDIDATE_POLY_ENCODER_MODEL_PATH:-s3://mesoor-customer-deployment/match/result_under_graduate_0722_0301}

# image version
export BIFURCAN_VERSION=${BIFURCAN_VERSION:-v0.0.6}
export FUSION_VERSION=${FUSION_VERSION:-3.0.0-RC1}
export PREDATOR_VERSION=${PREDATOR_VERSION:-3.0.0-RC1}
export MESOOR_RECOMMENDATION_VERSION=${MESOOR_RECOMMENDATION_VERSION:-0.1.0}
export RESUME_INDEXER_VERSION=${RESUME_INDEXER_VERSION:-0.4.1-milvus}
export POLY_ENCODERS_VERSION=${POLY_ENCODERS_VERSION:-0.1.0}
export RERANKER_VERSION=${RERANKER_VERSION:-0.1.0}

# download resources
docker pull 722740969534.dkr.ecr.cn-northwest-1.amazonaws.com.cn/match-local:aws-cli-2.0.6
docker run --rm -it -e BIFURCAN_VERSION -e READER_MODEL_VERSION -e POSITION_FILTER_MODEL_VERSION -e CLS_MODEL_VERSION -e "AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID" -e "AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY" -e AWS_DEFAULT_REGION -e "BIFURCAN_VOLUME=$BIFURCAN_DATA_PATH"  -v $PWD/$BIFURCAN_DATA_PATH:/bifurcan-volume 722740969534.dkr.ecr.cn-northwest-1.amazonaws.com.cn/match-local:aws-cli-2.0.6 s3 cp s3://mesoor-customer-deployment/bert/chinese_L-12_H-768_A-12/bert_config.json /bifurcan-volume/model/bert_config.json
docker run --rm -it -e BIFURCAN_VERSION -e READER_MODEL_VERSION -e POSITION_FILTER_MODEL_VERSION -e CLS_MODEL_VERSION -e "AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID" -e "AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY" -e AWS_DEFAULT_REGION -e "BIFURCAN_VOLUME=$BIFURCAN_DATA_PATH"  -v $PWD/$BIFURCAN_DATA_PATH:/bifurcan-volume 722740969534.dkr.ecr.cn-northwest-1.amazonaws.com.cn/match-local:aws-cli-2.0.6 s3 cp s3://mesoor-customer-deployment/bert/chinese_L-12_H-768_A-12/bert_model.ckpt.data-00000-of-00001 /bifurcan-volume/model/bert_model.ckpt.data-00000-of-00001 &&
docker run --rm -it -e BIFURCAN_VERSION -e READER_MODEL_VERSION -e POSITION_FILTER_MODEL_VERSION -e CLS_MODEL_VERSION -e "AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID" -e "AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY" -e AWS_DEFAULT_REGION -e "BIFURCAN_VOLUME=$BIFURCAN_DATA_PATH"  -v $PWD/$BIFURCAN_DATA_PATH:/bifurcan-volume 722740969534.dkr.ecr.cn-northwest-1.amazonaws.com.cn/match-local:aws-cli-2.0.6 s3 cp s3://mesoor-customer-deployment/bert/chinese_L-12_H-768_A-12/bert_model.ckpt.index /bifurcan-volume/model/bert_model.ckpt.index &&
docker run --rm -it -e BIFURCAN_VERSION -e READER_MODEL_VERSION -e POSITION_FILTER_MODEL_VERSION -e CLS_MODEL_VERSION -e "AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID" -e "AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY" -e AWS_DEFAULT_REGION -e "BIFURCAN_VOLUME=$BIFURCAN_DATA_PATH"  -v $PWD/$BIFURCAN_DATA_PATH:/bifurcan-volume 722740969534.dkr.ecr.cn-northwest-1.amazonaws.com.cn/match-local:aws-cli-2.0.6 s3 cp s3://mesoor-customer-deployment/bert/chinese_L-12_H-768_A-12/bert_model.ckpt.meta /bifurcan-volume/model/bert_model.ckpt.meta &&
docker run --rm -it -e BIFURCAN_VERSION -e READER_MODEL_VERSION -e POSITION_FILTER_MODEL_VERSION -e CLS_MODEL_VERSION -e "AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID" -e "AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY" -e AWS_DEFAULT_REGION -e "BIFURCAN_VOLUME=$BIFURCAN_DATA_PATH"  -v $PWD/$BIFURCAN_DATA_PATH:/bifurcan-volume 722740969534.dkr.ecr.cn-northwest-1.amazonaws.com.cn/match-local:aws-cli-2.0.6 s3 cp s3://mesoor-customer-deployment/bert/chinese_L-12_H-768_A-12/vocab.txt /bifurcan-volume/model/vocab.txt &&
docker run --rm -it -e BIFURCAN_VERSION -e READER_MODEL_VERSION -e POSITION_FILTER_MODEL_VERSION -e CLS_MODEL_VERSION -e "AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID" -e "AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY" -e AWS_DEFAULT_REGION -e "BIFURCAN_VOLUME=$BIFURCAN_DATA_PATH"  -v $PWD/$BIFURCAN_DATA_PATH:/bifurcan-volume 722740969534.dkr.ecr.cn-northwest-1.amazonaws.com.cn/match-local:aws-cli-2.0.6 s3 cp s3://mesoor-customer-deployment/bifurcan/$CLS_MODEL_VERSION/$CLS_MODEL_VERSION.weights /bifurcan-volume/model/$CLS_MODEL_VERSION/$CLS_MODEL_VERSION.weights &&
docker run --rm -it -e BIFURCAN_VERSION -e READER_MODEL_VERSION -e POSITION_FILTER_MODEL_VERSION -e CLS_MODEL_VERSION -e "AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID" -e "AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY" -e AWS_DEFAULT_REGION -e "BIFURCAN_VOLUME=$BIFURCAN_DATA_PATH"  -v $PWD/$BIFURCAN_DATA_PATH:/bifurcan-volume 722740969534.dkr.ecr.cn-northwest-1.amazonaws.com.cn/match-local:aws-cli-2.0.6 s3 cp s3://mesoor-customer-deployment/bifurcan/$READER_MODEL_VERSION/$READER_MODEL_VERSION.weights /bifurcan-volume/model/$READER_MODEL_VERSION/$READER_MODEL_VERSION.weights &&
docker run --rm -it -e BIFURCAN_VERSION -e READER_MODEL_VERSION -e POSITION_FILTER_MODEL_VERSION -e CLS_MODEL_VERSION -e "AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID" -e "AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY" -e AWS_DEFAULT_REGION -e "BIFURCAN_VOLUME=$BIFURCAN_DATA_PATH"  -v $PWD/$BIFURCAN_DATA_PATH:/bifurcan-volume 722740969534.dkr.ecr.cn-northwest-1.amazonaws.com.cn/match-local:aws-cli-2.0.6 s3 cp s3://mesoor-customer-deployment/bifurcan/$POSITION_FILTER_MODEL_VERSION/$POSITION_FILTER_MODEL_VERSION.weights /bifurcan-volume/model/$POSITION_FILTER_MODEL_VERSION/$POSITION_FILTER_MODEL_VERSION.weights &&
docker run --rm -it -e BIFURCAN_VERSION -e READER_MODEL_VERSION -e POSITION_FILTER_MODEL_VERSION -e CLS_MODEL_VERSION -e "AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID" -e "AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY" -e AWS_DEFAULT_REGION -e "BIFURCAN_VOLUME=$BIFURCAN_DATA_PATH"  -v $PWD/$BIFURCAN_DATA_PATH:/bifurcan-volume 722740969534.dkr.ecr.cn-northwest-1.amazonaws.com.cn/match-local:aws-cli-2.0.6 s3 cp s3://mesoor-customer-deployment/bifurcan/expand/v1_2020_06_30/industry_cv_jd_mapping-0331.csv /bifurcan-volume/bifurcan/knowledge/dictionaries/industry_cv_jd_mapping-0331.csv &&
docker run --rm -it -e BIFURCAN_VERSION -e READER_MODEL_VERSION -e POSITION_FILTER_MODEL_VERSION -e CLS_MODEL_VERSION -e "AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID" -e "AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY" -e AWS_DEFAULT_REGION -e "BIFURCAN_VOLUME=$BIFURCAN_DATA_PATH"  -v $PWD/$BIFURCAN_DATA_PATH:/bifurcan-volume 722740969534.dkr.ecr.cn-northwest-1.amazonaws.com.cn/match-local:aws-cli-2.0.6 s3 cp s3://mesoor-customer-deployment/bifurcan/expand/v1_2020_06_30/pos-level_mapping-0330.csv /bifurcan-volume/bifurcan/knowledge/dictionaries/pos-level_mapping-0330.csv &&
docker run --rm -it -e BIFURCAN_VERSION -e READER_MODEL_VERSION -e POSITION_FILTER_MODEL_VERSION -e CLS_MODEL_VERSION -e "AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID" -e "AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY" -e AWS_DEFAULT_REGION -e "BIFURCAN_VOLUME=$BIFURCAN_DATA_PATH"  -v $PWD/$BIFURCAN_DATA_PATH:/bifurcan-volume 722740969534.dkr.ecr.cn-northwest-1.amazonaws.com.cn/match-local:aws-cli-2.0.6 s3 cp s3://mesoor-customer-deployment/bifurcan/expand/v1_2020_06_30/pos-role_mapping-0401.csv /bifurcan-volume/bifurcan/knowledge/dictionaries/pos-role_mapping-0401.csv &&
docker run --rm -it -e BIFURCAN_VERSION -e READER_MODEL_VERSION -e POSITION_FILTER_MODEL_VERSION -e CLS_MODEL_VERSION -e "AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID" -e "AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY" -e AWS_DEFAULT_REGION -e "BIFURCAN_VOLUME=$BIFURCAN_DATA_PATH"  -v $PWD/$BIFURCAN_DATA_PATH:/bifurcan-volume 722740969534.dkr.ecr.cn-northwest-1.amazonaws.com.cn/match-local:aws-cli-2.0.6 s3 cp s3://mesoor-customer-deployment/bifurcan/expand/v1_2020_06_30/pos-title_mapping-0330.csv /bifurcan-volume/bifurcan/knowledge/dictionaries/pos-title_mapping-0330.csv


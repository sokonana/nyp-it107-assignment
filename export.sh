PROJ=it107_assignment
MODEL=ssd_mobilenet_v2_320x320_coco17_tpu-8
EXPERIMENT=run4
PIPELINE_CONFIG_PATH=/home/sokonana/${PROJ}/models/${MODEL}/${EXPERIMENT}/pipeline.config
MODEL_DIR=/home/sokonana/${PROJ}/models/${MODEL}/${EXPERIMENT}/
TRAIN_CHECKPOINT_DIR=/home/sokonana/${PROJ}/models/${MODEL}/${EXPERIMENT}/
EXPORT_DIR=/home/sokonana/${PROJ}/exported_models/${MODEL}/${EXPERIMENT}/

python3 exporter_main_v2.py \
    --input_type image_tensor \
    --pipeline_config_path ${PIPELINE_CONFIG_PATH} \
    --trained_checkpoint_dir ${TRAIN_CHECKPOINT_DIR} \
    --output_directory ${EXPORT_DIR}
    

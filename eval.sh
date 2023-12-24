export CUDA_VISIBLE_DEVICES="-1"
# MODEL=ssd_mobilenet_v2_320x320_coco17_tpu-8
MODEL=centernet_resnet50_v1_fpn_512x512_coco17_tpu-8
PROJ=it107_assignment
EXPERIMENT=run3
PIPELINE_CONFIG_PATH=/home/sokonana/${PROJ}/models/${MODEL}/${EXPERIMENT}/pipeline.config
MODEL_DIR=/home/sokonana/${PROJ}/models/${MODEL}/${EXPERIMENT}/
CHECKPOINT_DIR=/home/sokonana/${PROJ}/models/${MODEL}/${EXPERIMENT}/
python3 model_main_tf2.py \
    --pipeline_config_path="${PIPELINE_CONFIG_PATH}" \
    --model_dir="${MODEL_DIR}" \
    --checkpoint_dir="${CHECKPOINT_DIR}" \
    --alsologtostderr

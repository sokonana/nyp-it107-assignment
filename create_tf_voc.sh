PROJ=it107_assignment
DATA_DIR=/home/sokonana/${PROJ}/data
LABELMAP=/home/sokonana/${PROJ}/data/label_map.pbtxt
OUTPUT_DIR=/home/sokonana/${PROJ}/data
TEST_RATIO=0.2

#echo $DATA_DIR
python3 create_tf_records_voc.py --data_dir="${DATA_DIR}" --label_map="${LABELMAP}"  --test_ratio="${TEST_RATIO}"  --output_dir="${OUTPUT_DIR}"
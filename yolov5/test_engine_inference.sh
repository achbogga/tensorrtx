export tensorrt_engine_file="/home/aboggaram/models/tip_burn_puresun_map_0.84_yolov5s.engine"
export test_samples="/home/aboggaram/data/tip_burn_test_images"
./yolov5 -d ${tensorrt_engine_file} ${test_samples}
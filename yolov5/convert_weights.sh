export intermediate_weights_file="/home/aboggaram/models/tip_burn_puresun_map_0.84_yolov5s.wts"
export tensorrt_engine_file="/home/aboggaram/models/tip_burn_puresun_map_0.84_yolov5s.engine"
./yolov5 -s ${intermediate_weights_file} ${tensorrt_engine_file} s
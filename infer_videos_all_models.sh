videos=../data/selected_videos/*
models=configs/quick_schedules/*inference_acc_test.yaml
for m in $models
do    
    for f in $videos
    do
        echo "for model: ${m}"
        echo "for video: ${f}"
        echo "......"
        of=$(cut -d '/' -f 3 <<< $m)    # remove configs/quick_schedules path from model string
        of=$(cut -d '.' -f 1 <<< $of)   # remove .extenstion from string
        python demo/demo.py --video-input $f --output ../data/results/$of --config-file $m
    done
done
videos=../data/selected_videos/*
for f in $videos
do
    echo "for video: ${f}"
    echo "......"
	python demo/demo.py --video-input $f --output $1 --config-file $0
done
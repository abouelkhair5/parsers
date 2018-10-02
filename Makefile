toy:
	cd ../../data && mkdir -p toy_data
	cd ../../data/toy_data && mkdir -p base_train && mkdir -p stream_train
	number=0 ; while [ $$number -le 99 ] ; do \
		python streamspot/parse.py $$number ../../data/all.tsv ../../data/toy_data/base_train/base-toy-$$number.txt ../../data/toy_data/stream_train/stream-toy-$$number.txt ; \
		number=`expr $$number + 4` ; \
	done
	cd ../../data/toy_data && mkdir -p base_test && mkdir -p stream_test
	number=300 ; while [ $$number -le 399 ] ; do \
		python streamspot/parse.py $$number ../../data/all.tsv ../../data/toy_data/base_test/base-attack-$$number.txt ../../data/toy_data/stream_test/stream-attack-$$number.txt ; \
		number=`expr $$number + 16` ; \
	done

youtube:
	cd ../../data && mkdir -p youtube_data
	cd ../../data/youtube_data && mkdir -p base_train && mkdir -p stream_train
	number=0 ; while [ $$number -le 99 ] ; do \
		python streamspot/parse.py $$number ../../data/all.tsv ../../data/youtube_data/base_train/base-youtube-$$number.txt ../../data/youtube_data/stream_train/stream-youtube-$$number.txt ; \
		number=`expr $$number + 1` ; \
	done

gmail:
	cd ../../data && mkdir -p gmail_data
	cd ../../data/gmail_data && mkdir -p base_train && mkdir -p stream_train
	number=100 ; while [ $$number -le 199 ] ; do \
		python streamspot/parse.py $$number ../../data/all.tsv ../../data/gmail_data/base_train/base-gmail-$$number.txt ../../data/gmail_data/stream_train/stream-gmail-$$number.txt ; \
		number=`expr $$number + 1` ; \
	done

vgame:
	cd ../../data && mkdir -p vgame_data
	cd ../../data/vgame_data && mkdir -p base_train && mkdir -p stream_train
	number=200 ; while [ $$number -le 299 ] ; do \
		python streamspot/parse.py $$number ../../data/all.tsv ../../data/vgame_data/base_train/base-vgame-$$number.txt ../../data/vgame_data/stream_train/stream-vgame-$$number.txt ; \
		number=`expr $$number + 1` ; \
	done

download:
	cd ../../data && mkdir -p download_data
	cd ../../data/download_data && mkdir -p base_train && mkdir -p stream_train
	number=400 ; while [ $$number -le 499 ] ; do \
		python streamspot/parse.py $$number ../../data/all.tsv ../../data/download_data/base_train/base-download-$$number.txt ../../data/download_data/stream_train/stream-download-$$number.txt ; \
		number=`expr $$number + 1` ; \
	done

cnn:
	cd ../../data && mkdir -p cnn_data
	cd ../../data/cnn_data/ && mkdir -p base_train && mkdir -p stream_train
	number=500 ; while [ $$number -le 599 ] ; do \
		python streamspot/parse.py $$number ../../data/all.tsv ../../data/cnn_data/base_train/base-cnn-$$number.txt ../../data/cnn_data/stream_train/stream-cnn-$$number.txt ; \
		number=`expr $$number + 1` ; \
	done

attack:
	cd ../../data && mkdir -p attack_data
	cd ../../data/attack_data && mkdir -p base_train && mkdir -p stream_train
	number=300 ; while [ $$number -le 399 ] ; do \
		python streamspot/parse.py $$number ../../data/all.tsv ../../data/attack_data/base_train/base-attack-$$number.txt ../../data/attack_data/stream_train/stream-attack-$$number.txt ; \
		number=`expr $$number + 1` ; \
	done

wget_train:
	cd ../../data/benign && mkdir -p base && mkdir -p stream
	number=0 ; while [ $$number -le 99 ] ; do \
		python camflow/prepare.py ../../data/benign/wget-normal-$$number.log wget-normal-preprocessed-$$number.txt ; \
		python camflow/parse.py wget-normal-preprocessed-$$number.txt ../../data/benign/base/base-wget-$$number.txt ../../data/benign/stream/stream-wget-$$number.txt ; \
		rm error.log ; \
		rm wget-normal-preprocessed-$$number.txt ; \
		number=`expr $$number + 1` ; \
	done

wget_test:
	cd ../../data/attack && mkdir -p base && mkdir -p stream
	number=0 ; while [ $$number -le 4 ] ; do \
		python camflow/prepare.py ../../data/attack/wget-attack-$$number.log wget-attack-preprocessed-$$number.txt ; \
		python camflow/parse.py wget-attack-preprocessed-$$number.txt ../../data/attack/base/base-wget-attack-$$number.txt ../../data/attack/stream/stream-wget-attack-$$number.txt ; \
		rm error.log ; \
		rm wget-attack-preprocessed-$$number.txt ; \
		number=`expr $$number + 1` ; \
	done
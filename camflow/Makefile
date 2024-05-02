5gcamflow-1:
	number=0 ; while [ $$number -le 9 ] ; do \
		python prepare.py -i ~/ds/camflow/30-04-2024/split/0$$number -o preprocessed$$number.txt ; \
		python parse.py -i preprocessed$$number.txt -B ~/ds/camflow/30-04-2024/base/base-$$number.txt -S ~/ds/camflow/30-04-2024/stream/stream-$$number.txt ; \
		rm preprocessed$$number.txt ; \
		number=`expr $$number + 1` ; \
	done

5gcamflow-2:
	number=10 ; while [ $$number -le 19 ] ; do \
		python prepare.py -i ~/ds/camflow/30-04-2024/split/$$number -o preprocessed$$number.txt ; \
		python parse.py -i preprocessed$$number.txt -B ~/ds/camflow/30-04-2024/base/base-$$number.txt -S ~/ds/camflow/30-04-2024/stream/stream-$$number.txt ; \
		rm preprocessed$$number.txt ; \
		number=`expr $$number + 1` ; \
	done

5gcamflow-3:
	number=20 ; while [ $$number -le 24 ] ; do \
		python prepare.py -i ~/ds/camflow/30-04-2024/split/$$number -o preprocessed$$number.txt ; \
		python parse.py -i preprocessed$$number.txt -B ~/ds/camflow/30-04-2024/base/base-$$number.txt -S ~/ds/camflow/30-04-2024/stream/stream-$$number.txt ; \
		rm preprocessed$$number.txt ; \
		number=`expr $$number + 1` ; \
	done

5gcamflow-4:
	number=150 ; while [ $$number -le 199 ] ; do \
		python prepare.py -i ~/ds/camflow/30-04-2024/split/$$number -o preprocessed$$number.txt ; \
		python parse.py -i preprocessed$$number.txt -B ~/ds/camflow/30-04-2024/base/base-$$number.txt -S ~/ds/camflow/30-04-2024/stream/stream-$$number.txt ; \
		rm preprocessed$$number.txt ; \
		number=`expr $$number + 1` ; \
	done
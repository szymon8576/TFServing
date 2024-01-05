FROM tensorflow/serving:latest

WORKDIR /models

COPY models.config models.config
COPY batching.config batching.config

COPY /DistilBERTEmotions /models/DistilBERTEmotions/1/
COPY /ArithmeticOCR /models/ArithmeticOCR/1/
COPY /LSTMSentiment /models/LSTMSentiment/1/
COPY /SpeechDigits /models/SpeechDigits/1/


EXPOSE 8501

CMD ["--model_config_file=/models/models.config", "--enable_batching=true", "--batching_parameters_file=/models/batching.config"]
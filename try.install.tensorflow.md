
# python3 -c "import tensorflow as tf; print(tf.config.list_physical_devices('GPU'))"


- install tensorflow
```bash
cd /data1/tools/python
python3.m.venv tensorflow
source  tensorflow/bin/activate
pip install tensorflow
```

-tensorflow 2
```bash
# Requires the latest pip
pip install --upgrade pip

# Current stable release for CPU and GPU
pip install tensorflow

## # Or try the preview build (unstable)
## pip install tf-nightly
```


- reference: https://tensorflow.google.cn/lite/guide/python?hl=zh-cn
- install tensorflow
```bash
python3 -m pip install tflite-runtime

pip install tflite-model-maker

```

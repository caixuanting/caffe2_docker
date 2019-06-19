FROM caffe2ai/caffe2

RUN pip install -U pip \
    && pip install  scipy \
    && pip install -U scikit-learn \
    && pip install  -U matplotlib \
    && pip install  -U jupyter \
    && pip install  -U lmdb \
    && pip install  -U python-mnist

# Set the working directory to /caffe
WORKDIR /caffe

VOLUME ["/caffe/data", "/caffe/notebooks"]

# Expose port 8888 (jupyter uses)
EXPOSE 8888
CMD jupyter notebook --no-browser --ip=0.0.0.0 --allow-root --NotebookApp.token='science'

FROM ubuntu:22.10
FROM python:3.9.5

RUN apt-get update && apt-get install -y gcc git libgl1-mesa-glx
RUN git clone https://github.com/megvii-research/NAFNet

WORKDIR /NAFNet
COPY cpu.patch .
RUN git apply cpu.patch

RUN python3 -m venv nafnet 
RUN . nafnet/bin/activate && \
    pip install torch==1.11.0 torchvision==0.12.0 -f https://download.pytorch.org/whl/torch_stable.html && \
    pip install -r requirements.txt && python3 setup.py develop --no_cuda_ext

COPY run.sh noisy.png noisy2.png test.py ./
COPY NAFNet-SIDD-width64.pth ./experiments/pretrained_models/

RUN chmod +x run.sh

CMD ["./run.sh"]
# 使用官方Python基础镜像
FROM python:3.9-slim

# 设置工作目录
WORKDIR /app

# 复制项目文件到容器中
COPY . /app

# 设置环境变量以禁用输出缓冲
ENV PYTHONUNBUFFERED=1

# 安装项目依赖
RUN pip install --no-cache-dir -r requirements.txt

# 允许python文件运行
CMD ["python", "main.py"]


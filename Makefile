image:
	docker pull registry.cn-hangzhou.aliyuncs.com/palan/electron-example:web
	docker build . -t registry.cn-hangzhou.aliyuncs.com/palan/electron-example
web:
	npm run build:web
	docker build . -t registry.cn-hangzhou.aliyuncs.com/palan/electron-example:web -f Dockerfile.web
push:
	docker login --username=yuanzhencai@palan registry.cn-hangzhou.aliyuncs.com --password $(ALI_REGISTRY_PASSWORD)
	docker push registry.cn-hangzhou.aliyuncs.com/palan/electron-example

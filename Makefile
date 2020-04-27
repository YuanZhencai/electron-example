image:
	npm run build
	npm run build:web
	docker build . -t registry.cn-hangzhou.aliyuncs.com/palan/electron-example
push:
	docker login --username=yuanzhencai@palan registry.cn-hangzhou.aliyuncs.com --password $(ALI_REGISTRY_PASSWORD)
	docker push registry.cn-hangzhou.aliyuncs.com/palan/electron-example

wasm:
	GOOS=js GOARCH=wasm GOFLAGS='-tags=test' go build -o main.wasm

nginx:
	docker run --name gotest -d -p 8080:8080 -v `pwd`:/usr/share/nginx/html registry.sovcombank.group/web-ecom/nginx-latest-certs
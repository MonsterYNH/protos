mkdir -p gencode

protoc --proto_path=third_part --proto_path=service/v1 \
    --go_out=gencode \
    --go-grpc_out=gencode \
    --grpc-gateway_out=logtostderr=true:gencode \
    --graphql_out=gencode \
    --gateway_out=gencode \
    service/v1/helloworld/*.proto

protoc --proto_path=third_part --proto_path=service/v1 \
    --go_out=gencode \
    --go-grpc_out=gencode \
    --grpc-gateway_out=logtostderr=true:gencode \
    --graphql_out=gencode \
    --gateway_out=gencode \
    service/v1/user/*.proto

rm -rf ~/.laiyefei/datas/rocketmq

mkdir -p ~/.laiyefei/datas/rocketmq/broker_1/conf
mkdir -p ~/.laiyefei/datas/rocketmq/broker_2/conf

cp ./broker_1.conf ~/.laiyefei/datas/rocketmq/broker_1/conf/broker.conf
cp ./broker_2.conf ~/.laiyefei/datas/rocketmq/broker_2/conf/broker.conf
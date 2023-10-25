from kafka import KafkaConsumer

consumer = KafkaConsumer(
    'ml-raw-dns',
    bootstrap_servers="kafka:9092",
    auto_offset_reset='earliest',
    enable_auto_commit=False
)

for m in consumer:
    print(m.value)
# mqtt-canvas-sample

ReactとWebSocketを使ったCanvasアプリをSalesforceに組み込んで、
MQTT Brokerからsubscribeしたデータをリアルタイム描画するサンプル

```
[MQTT Broker] -- (Websocket) -- [MQTT Subscriber/React] -- (HTTP/SignedRequest) -- [Salesforce]
```

## 環境変数

- ``MQTT_HOST``
- ``MQTT_USER``
- ``MQTT_PASS``

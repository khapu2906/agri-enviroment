

curl -v -X POST http://127.0.0.1:8091/pools/default -d username=$COUCHBASE_ADMINISTRATOR_USERNAME -d password=$COUCHBASE_ADMINISTRATOR_PASSWORD -d memoryQuota=512 -d indexMemoryQuota=300 &&

curl -v http://127.0.0.1:8091/settings/web -d port=8091 -d username=$COUCHBASE_ADMINISTRATOR_USERNAME -d password=$COUCHBASE_ADMINISTRATOR_PASSWORD &&

curl -i -u $COUCHBASE_ADMINISTRATOR_USERNAME:$COUCHBASE_ADMINISTRATOR_PASSWORD -X POST http://127.0.0.1:8091/settings/indexes -d 'storageMode=memory_optimized' &&

curl -v -u $COUCHBASE_ADMINISTRATOR_USERNAME:$COUCHBASE_ADMINISTRATOR_PASSWORD -X POST http://127.0.0.1:8091/pools/default/buckets -d name=$COUCHBASE_BUCKET -d bucketType=couchbase -d ramQuotaMB=300 -d authType=sasl -d saslPassword=$COUCHBASE_BUCKET_PASSWORD &&

curl -v http://127.0.0.1:8093/query/service -d "statement=CREATE PRIMARY INDEX ON `$COUCHBASE_BUCKET`"


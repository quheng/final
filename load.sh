dvid repos new TestDataset "Dataset for test" testdataset
dvid repo test new keyvalue KeyValueStore
dvid -stdin node test KeyValueStore put testSwc <  ./slice15_L11.swc

# http://127.0.0.1:12345/api/node/testdataset/KeyValueStore/key/testSwc
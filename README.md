Minimal sample to reproduce an issue with closure usage in `dart_mappable` running in code compiled with `dart compile js -O0`

## Broken

To see the code not working, run the following command:

```bash
dart run tool/run.dart O0
```

You should see an exception similar to this:

```console
TypeError: J.getInterceptor$asx(...).get$isEmpty is not a function
    at Object.get$isEmpty$asx (/Users/rexios/repos/dart2js_o0_mapper_exception/lib/index.js:682:45)
    at PubPackageMapper.decode$2 (/Users/rexios/repos/dart2js_o0_mapper_exception/lib/index.js:26915:35)
    at PubPackageMapper.decode$2 (/Users/rexios/repos/dart2js_o0_mapper_exception/lib/index.js:26691:19)
    at PubPackageMapper.decoder$2 (/Users/rexios/repos/dart2js_o0_mapper_exception/lib/index.js:26905:22)
    at PubPackageMapper.decoder$2 (/Users/rexios/repos/dart2js_o0_mapper_exception/lib/index.js:26675:22)
    at PubPackageMapper.decodeValue$1$3 (/Users/rexios/repos/dart2js_o0_mapper_exception/lib/index.js:27211:26)
    at PubPackageMapper.decodeValue$1$1 (/Users/rexios/repos/dart2js_o0_mapper_exception/lib/index.js:27220:19)
    at PubPackageMapper.decodeMap$1$1 (/Users/rexios/repos/dart2js_o0_mapper_exception/lib/index.js:26935:19)
    at Object.PubPackageMapper_fromMap (/Users/rexios/repos/dart2js_o0_mapper_exception/lib/index.js:10936:53)
    at /Users/rexios/repos/dart2js_o0_mapper_exception/lib/index.js:29316:49 
```

## Working

To see the code working, run the following command:

```bash
dart run tool/run.dart O1
```

You should not see any exceptions

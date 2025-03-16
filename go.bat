@echo off
SETLOCAL

REM we want jruby-complete to take care of all things ruby
SET GEM_HOME=
SET GEM_PATH=

SET JAVA_OPTS=-client -Xmx4096m -XX:ReservedCodeCacheSize=512m --add-modules java.se --add-opens java.base/java.lang=ALL-UNNAMED --add-opens java.base/java.io=ALL-UNNAMED --add-opens java.base/java.lang.reflect=ALL-UNNAMED --add-opens java.base/javax.crypto=ALL-UNNAMED

java %JAVA_OPTS% -jar third_party\jruby\jruby-complete.jar -X-C -S rake %*

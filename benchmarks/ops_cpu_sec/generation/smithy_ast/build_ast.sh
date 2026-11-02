#!/bin/bash
# Writes the Smithy JSON AST of a model directory using the Smithy reference
# implementation (smithy-model from Maven Central). Requires a JDK (17+).
#   ./build_ast.sh <models-repo>/model <out.json>
set -euo pipefail
SMITHY_VERSION=1.74.0
DIR=$(cd "$(dirname "$0")" && pwd)
LIB="$DIR/.lib/$SMITHY_VERSION"
mkdir -p "$LIB"
for a in smithy-model smithy-utils smithy-jmespath smithy-aws-traits smithy-protocol-test-traits \
         smithy-rules-engine smithy-aws-endpoints smithy-protocol-traits smithy-aws-iam-traits; do
  [ -f "$LIB/$a.jar" ] || curl -sSfL -o "$LIB/$a.jar" \
    "https://repo1.maven.org/maven2/software/amazon/smithy/$a/$SMITHY_VERSION/$a-$SMITHY_VERSION.jar"
done
# A Windows JDK needs Windows paths and ';' separators.
SEP=:; JDIR=$DIR; JLIB=$LIB
case "$(uname -s)" in
  MINGW*|MSYS*|CYGWIN*) SEP=';'; JDIR=$(cygpath -m "$DIR"); JLIB=$(cygpath -m "$LIB") ;;
esac
CP=""
for j in "$LIB"/*.jar; do CP="$CP$JLIB/$(basename "$j")$SEP"; done
javac -d "$JLIB" -cp "$CP" "$JDIR/SmithyAst.java"
java -cp "$CP$JLIB" SmithyAst "$1" "$2"

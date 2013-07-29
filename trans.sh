export J2OBJC_PATH=path/to/j2objc-0.8.2
export MAVEN_REPO=~/.m2/repository

export PY_V=1.3.2
export PLAYN_V=1.7
export REACT_V=1.3.1
export OOO_V=$PLAYN_V

export PY=$MAVEN_REPO/com/samskivert/pythagoras/$PY_V/pythagoras-$PY_V.jar
export PLAYN=$MAVEN_REPO/com/googlecode/playn/playn-core/$PLAYN_V/playn-core-$PLAYN_V.jar
export REACT=$MAVEN_REPO/com/threerings/react/REACT_V/react-REACT_V.jar
export OOO=$MAVEN_REPO/com/threerings/tripleplay/OOO_V/tripleplay-OOO_V.jar

find core/src/main/java -type d -exec sh -c "$J2OBJC_PATH/j2objc -d objc -use-arc -classpath \"$PLAYN:$PY:$OOO:$REACT\" -sourcepath core/src/main/java {}/*" \;
# find core/src/main/java -type d -exec sh -c "j2objc -d objc -use-arc -classpath \"$PLAYN:$PY\" -sourcepath core/src/main/java {}/*" \;
#!/bin/sh
PASS=0
FAIL=0

TEST_1=$(find /home/user/.jenkins/jobs/pullJob/builds -name build.xml -exec grep -o "SUCCESS" {} \; | wc -l)
TEST_2=$(find /home/user/.jenkins/jobs/buildJob/builds -name build.xml -exec grep -o "SUCCESS" {} \; | wc -l)
TEST_3=$(find /home/user/.jenkins/jobs/testJob/builds -name build.xml -exec grep -o "SUCCESS" {} \; | wc -l)
TEST_4=$(grep -o -e "Running pullJob" -e "https://github.com/frescoplaylab/maven-war.git"  /home/user/.jenkins/jobs/pullJob/config.xml| wc -l)
TEST_5=$(grep -o -e "upstreamProjects" -e "pullJob" -e "clean" -e "package" -e "https://github.com/frescoplaylab/maven-war.git"  /home/user/.jenkins/jobs/buildJob/config.xml| wc -l)
TEST_6=$(grep -o -e "upstreamProjects" -e "buildJob" -e "test" -e "https://github.com/frescoplaylab/maven-war.git"  /home/user/.jenkins/jobs/testJob/config.xml| wc -l)
TEST_7=$(grep -o -e "au.com.centrumsystems.hudson.plugin.buildpipeline.BuildPipelineView" -e "buildPipelineDemo" -e "pullJob" /home/user/.jenkins/config.xml| wc -l)

echo "TEST_1=$TEST_1"
echo "TEST_2=$TEST_2"
echo "TEST_3=$TEST_3"
echo "TEST_4=$TEST_4"
echo "TEST_5=$TEST_5"
echo "TEST_6=$TEST_6"
echo "TEST_7=$TEST_7"




if [ "$TEST_1" -eq 1 ]
then ((PASS++))
fi;
if [ "$TEST_2" -ge 1 ]
then ((PASS++))
fi;
if [ "$TEST_3" -ge 1 ]
then ((PASS++))
fi;
if [ "$TEST_4" -ge 2 ]
then ((PASS++))
fi;
if [ "$TEST_5" -ge 6 ]
then ((PASS++))
fi;
if [ "$TEST_6" -ge 5 ]
then ((PASS++))
fi;
if [ "$TEST_7" -ge 3 ]
then ((PASS++))
fi;



FAIL=$(( 7 - $PASS ))

echo "Test cases executed = 7";
echo "PASS = $PASS   FAIL=$FAIL" 









find: ‘/home/user/.jenkins/jobs/pullJob/builds’: No such file or directory

find: ‘/home/user/.jenkins/jobs/buildJob/builds’: No such file or directory

find: ‘/home/user/.jenkins/jobs/testJob/builds’: No such file or directory

grep: /home/user/.jenkins/jobs/pullJob/config.xml: No such file or directory

grep: /home/user/.jenkins/jobs/buildJob/config.xml: No such file or directory

grep: /home/user/.jenkins/jobs/testJob/config.xml: No such file or directory

TEST_1=0

TEST_2=0

TEST_3=0

TEST_4=0

TEST_5=0

TEST_6=0

TEST_7=0

Test cases executed = 7

PASS = 0   FAIL=7

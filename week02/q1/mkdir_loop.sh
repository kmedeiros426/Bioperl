#! /bin/sh

cd my_project

until mkdir bin etc lib share tmp ; do
	echo "directory not created"
	sleep 5
done

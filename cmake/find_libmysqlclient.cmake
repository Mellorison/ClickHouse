set (MYSQL_LIB_PATHS "/usr/local/opt/mysql/lib" "/usr/local/lib/mysql/")
set (MYSQL_INCLUDE_PATHS "/usr/local/opt/mysql/include")
if (USE_STATIC_LIBRARIES)
	find_library (STATIC_MYSQLCLIENT_LIB libmysqlclient.a PATHS ${MYSQL_LIB_PATHS})
else ()
	find_library (MYSQLCLIENT_LIB mysqlclient PATHS ${MYSQL_LIB_PATHS})
endif ()
find_path (MYSQL_INCLUDE_DIR NAMES mysql.h PATH_SUFFIXES mysql PATHS ${MYSQL_INCLUDE_PATHS})
include_directories (${MYSQL_INCLUDE_DIR})

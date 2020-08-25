# - Find KDSoap
# This module finds if KDSoap is installed.
#
# KDSoap_FOUND		- Set to TRUE if KDSoap was found.
# KDSoap_LIBRARIES	- Path to KDSoap libraries.
# KDSoap_INCLUDE_DIR	- Path to the KDSoap include directory.
#
# Copyright (C) 2011-2016 Klaralvdalens Datakonsult AB, a KDAB Group company, info@kdab.com

# Redistribution and use is allowed according to the terms of the BSD license

include(FindPackageHandleStandardArgs)

find_library(KDSoap_LIBRARIES
	NAMES KDSoap kdsoap
	PATH_SUFFIXES bin)
find_path(KDSoap_INCLUDE_DIR
   NAMES KDSoapClient/KDSoapValue.h
   PATH_SUFFIXES include src)

mark_as_advanced(KDSoap_LIBRARIES KDSoap_INCLUDE_DIR)

find_package_handle_standard_args(KDSoap DEFAULT_MSG KDSoap_LIBRARIES KDSoap_INCLUDE_DIR)

set CONDA_ENVIRO=pdal-build

<<<<<<< Updated upstream
=======
REM del /s /q  %CONDA_ENVIRO%
mkdir %CONDA_ENVIRO%
pushd %CONDA_ENVIRO%

>>>>>>> Stashed changes
call conda activate %CONDA_ENVIRO%

cd %CONDA_ENVIRO%

echo "conda prefix" %CONDA_PREFIX%
<<<<<<< Updated upstream
REM set GENERATOR="Visual Studio 14 2015 Win64"
set GENERATOR="NMake Makefiles"
=======
set GENERATOR="Visual Studio 14 2015 Win64"
REM set GENERATOR="NMake Makefiles"
>>>>>>> Stashed changes
set GENERATOR="Ninja"

set ORACLE_HOME=%CONDA_PREFIX%
cmake -G %GENERATOR% ^
      -DCMAKE_BUILD_TYPE:STRING=RelWithDebInfo ^
<<<<<<< Updated upstream
      -DCMAKE_LIBRARY_PATH:FILEPATH="=%CONDA_PREFIX%/Library/lib" ^
=======
      -DCMAKE_LIBRARY_PATH:FILEPATH="%CONDA_PREFIX%/Library/lib" ^
      -DCMAKE_INCLUDE_PATH:FILEPATH="%CONDA_PREFIX%/Library/include" ^
      -DLIBLZMA_LIBRARY:FILEPATH=%CONDA_PREFIX%\Library\lib\liblzma.lib ^
      -DZSTD_LIBRARY:FILEPATH=%CONDA_PREFIX%\Library\lib\libzstd.lib ^
      -DCMAKE_INSTALL_PREFIX:FILEPATH="%CONDA_PREFIX%/" ^
	  -DPython3_ROOT_DIR:FILEPATH="%CONDA_PREFIX%" ^
      -DPython3_FIND_STRATEGY=LOCATION ^
      -DPYTHON_EXECUTABLE="%CONDA_PREFIX%\python" ^
>>>>>>> Stashed changes
      -DBUILD_PLUGIN_PYTHON=ON ^
	  -DPython3_ROOT_DIR:FILEPATH="%CONDA_PREFIX%" ^
	  -DPython3_FIND_STRATEGY=LOCATION ^
  	  -DFBX_ROOT_DIR:FILEPATH="C:\fbx\2019.0" ^
      -DBUILD_PLUGIN_OCI=OFF ^
      -DBUILD_PLUGIN_I3S=ON ^
	  -DBUILD_PLUGIN_E57=ON ^
	  -DBUILD_PLUGIN_TILEDB=ON ^
      -DBUILD_PLUGIN_FBX=ON ^
      -DBUILD_PLUGIN_ICEBRIDGE=ON ^
      -DBUILD_PLUGIN_NITF=ON ^
      -DBUILD_PLUGIN_TILEDB=ON ^
      -DWITH_TESTS=ON ^
      -DWITH_ZLIB=ON ^
      -DBUILD_PLUGIN_PGPOINTCLOUD=ON ^
      -DBUILD_PGPOINTCLOUD_TESTS=OFF ^
      -DBUILD_PLUGIN_SQLITE=ON ^
      -DBUILD_SQLITE_TESTS=OFF ^
      -DBUILD_OCI_TESTS=OFF ^
      -DCMAKE_VERBOSE_MAKEFILE=OFF ^
      -DWITH_LAZPERF=ON ^
      -DWITH_LASZIP=ON ^
      -DWITH_ZSTD=ON ^
      -DWITH_LZMA=ON ^
      -DLIBLZMA_LIBRARY:FILEPATH=%CONDA_PREFIX%\Library\lib\liblzma.lib ^
      -DZSTD_LIBRARY:FILEPATH=%CONDA_PREFIX%\Library\lib\libzstd.lib ^
	  -DBUILD_PLUGIN_RDBLIB=ON ^
	  -DRdb_ROOT=..\..\..\..\rdblib-2.2.1-x86_64-windows\interface\cpp ^
      .. --debug-trycompile

call ninja
REM nmake /f Makefile

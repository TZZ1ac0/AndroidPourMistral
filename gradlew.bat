@rem
@rem Copyright 2015 the original author or authors.
@rem
@rem Licensed under the Apache License, Version 2.0 (the "License");
@rem you may not use this file except in compliance with the License.
@rem You may obtain a copy of the License at
@rem
@rem     https://www.apache.org/licenses/LICENSE-2.0
@rem
@rem Unless required by applicable law or agreed to in writing, software
@rem distributed under the License is distributed on an "AS IS" BASIS,
@rem WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
@rem See the License for the specific language governing permissions and
@rem limitations under the License.
@rem

@rem
@rem Gradle Wrapper Script for Windows
@rem

@rem Set local directory if specified
@if "%CD%"=="" (set LOCAL_DIR=%~dp0) else (set LOCAL_DIR=%CD%)

@rem Resolve the script directory
@set SCRIPT_DIR=%~dp0

@rem Resolve the script path to a absolute path
@set SCRIPT_PATH=%~f0

@rem Check if the script is called with a relative path
@if not "%SCRIPT_DIR%"=="%~dp0" (
    @rem If relative path, set the script directory to the current directory
    @set SCRIPT_DIR=%LOCAL_DIR%)

@rem Set APP_HOME to the directory containing the script
@set APP_HOME=%SCRIPT_DIR%

@rem Set APP_BASE_NAME to the name of the script without extension
@set APP_BASE_NAME=%~n0

@rem Set DEFAULT_JVM_OPTS if not already set
@if "%DEFAULT_JVM_OPTS%"=="" set DEFAULT_JVM_OPTS=-Xmx64m -Xms64m

@rem Set JAVA_EXE to the Java executable
@if "%JAVA_HOME%"=="" (
    @set JAVA_EXE=java
) else (
    @set JAVA_EXE=%JAVA_HOME%/bin/java
)

@rem Check if Java is available
@where %JAVA_EXE% >nul 2>&1
@if errorlevel 1 (
    @echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
    @echo.
    @echo Please set the JAVA_HOME variable in your environment to match the
    @echo location of your Java installation.
    @exit /b 1
)

@rem Set CLASSPATH to the Gradle Wrapper JAR
@set CLASSPATH=%APP_HOME%\gradle\wrapper\gradle-wrapper.jar

@rem Collect all arguments for the Java command
@set JVM_ARGS=%DEFAULT_JVM_OPTS% -Dorg.gradle.appname=%APP_BASE_NAME% -Dfile.encoding=UTF-8

@rem Add the JVM arguments from the environment, if any
@if not "%JAVA_OPTS%"=="" set JVM_ARGS=%JVM_ARGS% %JAVA_OPTS%

@rem Add all arguments from the command line
:loop
@if "%1"=="" goto :endloop
@set JVM_ARGS=%JVM_ARGS% %1
@shift
@goto :loop
:endloop

@rem Start Gradle
@%JAVA_EXE% %JVM_ARGS% org.gradle.wrapper.GradleWrapperMain

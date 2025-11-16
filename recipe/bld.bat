set "PATH=C:\Program Files\LLVM\bin;%PATH%"
set "INCLUDE=%$VC_INCLUDEPATH%"
:: delete existing LLVM setup in image that often gets higher precedence
rmdir /s /q "C:\Program Files\Microsoft Visual Studio\2022\Enterprise\VC\Tools\Llvm"
rmdir /s /q "C:\Program Files\LLVM\bin"
clang --version
%PYTHON% -m pip install . --no-deps -vvv

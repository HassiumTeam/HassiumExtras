for /r %%i in (*.png) do (
start "" "D:\Applications\ImageMagick-6.8.9-Q16\convert.exe" -units PixelsPerInch %%i -density 96 %%i
)
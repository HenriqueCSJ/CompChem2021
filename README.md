<p align="center">
  <img width="200" src="http://compchem.uff.br/assets/images/logo.jpg">
</p>

# CompChem 2021 - Universidade Federal Fluminense
---
This repository was built to help you get **[NCIPLOT 4](https://github.com/juliacontrerasgarcia/nciplot)** running on your Windows OS system as a requirement for Professor Julia Contreras-García's short-course. For that we'll use Cygwin.

We have a [short video here](https://vimeo.com/607073971) showing all steps! (~ 4 min 20 sec) OR, just follow the steps below.

1. Click [HERE](https://cygwin.com/setup-x86_64.exe) to download Cygwin 64 bit. ⚠️ Don't worry, it is not a virus. If you receive a complain from Windows just allow it to download anyways.
  
2. Click [HERE ](https://raw.githubusercontent.com/HenriqueCSJ/CompChem2021/main/packagelist.txt) and then right-click anywhere on the screen to select "Save as" to get the packages list. You'll need it later. ;-)
  

Make sure that `setup-x86_64.exe` and `packagelist.txt` are in the same folder! Do a double click on the Cygwin installer to get it installed. Don't change anything and just click NEXT during the install proccess. Cygwin will ask you for a site to download the packages. `http://mirrors.kernel.org` is a good and fast choice but any option should work. After selecting a download site keep clicking next untill Cygwin finishes. That gives you a functioning Linux environment on your windows.

Now open your new Cygwin terminal and go to the folder where you downloaded the previous files. As an example:

```bash
cd  /cygdrive/c/Users/henri/Downloads 
```

If your Cygwin is in the correct folder, please, copy the command line below in your terminal and press enter:

```bash
./setup-x86_64 -P `awk 'NR==1{printf \$1}{printf ",%s", \$1}' packagelist.txt`
```

After that, your Cygwin is configured with all packages. We are almost finished.

Let's get back to the Cygwin home:

```bash
cd
```

Get the install script, running this on your Cygwin terminal:

```bash
wget https://raw.githubusercontent.com/HenriqueCSJ/CompChem2021/main/install_nciplot.sh
```

Run the script:

```bash
bash install_nciplot.sh
```

Voilà! Now you have NCIPLOT 4 installed. Just close your Cygwin terminal and reopen it.

Test NCIPLOT by just typing the command:

```bash
nciplot
```

---
You can navigate through your files using Windows by just going to **C:\cygwin64\home\XXXXXXX**, where **XXXXXXX** is your username.

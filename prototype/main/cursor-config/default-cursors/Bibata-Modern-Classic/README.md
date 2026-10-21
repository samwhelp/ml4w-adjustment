

# Cursor Config

* [Config File Path](#config-file-path)
* [Arch Package](#arch-package)
* [Usage](#usage)




## Config File Path

| Config File Path |
| ---------------- |
| [/usr/share/icons/default/index.theme](./asset/overlay/usr/share/icons/default/index.theme) |


| Config File Path |
| ---------------- |
| [~/.icons/default/index.theme](./asset/overlay/usr/share/icons/default/index.theme) |
| [~/.local/share/icons/default/index.theme](./asset/overlay/usr/share/icons/default/index.theme) |


run

``` sh
pacman -Ql default-cursors
```

show

```
default-cursors /usr/
default-cursors /usr/share/
default-cursors /usr/share/icons/
default-cursors /usr/share/icons/default/
default-cursors /usr/share/icons/default/index.theme
```


run

``` sh
pacman -Qo /usr/share/icons/default/index.theme
```

show

```
/usr/share/icons/default/index.theme is owned by default-cursors 3-1
```




## Arch Package

Search: [default-cursors](https://archlinux.org/packages/?sort=&q=default-cursors&maintainer=&flagged=)

| Arch Package |
| ------------ |
| [default-cursors](https://archlinux.org/packages/extra/any/default-cursors/) |




## Usage


### install

run

``` sh
./install.sh
```

or run

``` sh
make install
```


### package-install

run

``` sh
./package-install.sh
```

or run

``` sh
make package-install
```


### asset-install

run

``` sh
./asset-install.sh
```

or run

``` sh
make asset-install
```


### prototype-install

run

``` sh
./prototype-install.sh
```

or run

``` sh
make prototype-install
```


### config-install

run

``` sh
./config-install.sh
```

or run

``` sh
make config-install
```

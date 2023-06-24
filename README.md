# Ruby on Rails with React.js Boilerplate

This is a boilerplate template for a Ruby on Rails app with a React.js frontend and PostgreSQL as the database. It provides a basic structure and setup to help you get started quickly.

## Prerequisites

Before you begin, ensure that you have the following installed:

- [Homebrew](https://brew.sh/)
- [Ruby 3.2.2](https://ruby-lang.org/en/documentation/installation/)
- [Rails 7.0.5](https://rubyonrails.org/)
- [Node.js](https://nodejs.org/)
- [npm](https://www.npmjs.com/) and/or [Yarn](https://yarnpkg.com/)
- [PostgreSQL](https://www.postgresql.org/)


## Setting up tools and dependencies

## Install Homebrew (if not already installed)

1.  Open Terminal on your Mac.

2.  Copy and paste the following command and press Return:

        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

3.  Follow the prompts to complete the installation of Homebrew.

Congrats! You have successfully installed Homebrew.

## Install RVM (Ruby Version Manager)

1.  In Terminal, enter the following command and press Return:

        \curl -sSL https://get.rvm.io | bash -s stable

2.  Follow the instructions provided during the installation process. RVM will be installed to your user directory (~/.rvm).

3.  Close the Terminal and reopen it to load RVM into your shell.

4.  Type in the following command and press Return:

        source ~/.rvm/scripts/rvm

Congrats! You have successfully installed RVM using Homebrew.


## Install Ruby

1.  In Terminal, enter the following command and press Return:

        rvm install 3.2.2

2.  Wait for the installation to complete. This may take a few minutes, depending on your internet connection.

3.  Set Ruby 3.2.2 as the default version by entering the following command and press Return:

        rvm use 3.2.2 --default

    => Fun fact, macOS may already has a version of Ruby pre-installed so this is important!

4.  Verify the installation by entering the following command to check if Ruby 3.2.2 is installed successfully:

        ruby -v

    You should see the following output.

        > ruby 3.2.2 (<year-month-day>) [<your-chipset>]

Congrats! You have successfully installed Ruby version 3.2.2 on your Mac using RVM.


## Install Rails

1.  Ensure you have RVM loaded into your shell by opening a new Terminal window, enter the following command and pressing Return:

        source ~/.rvm/scripts/rvm

    This will load RVM into your current session.

2.  To install Rails, enter the following command and press Return:

        gem install rails --version=7.0.5

3.  Verify whether Rails was installed, and whether the correct version was installed:

        rails -v

    The output should look like this:

        > Rails 7.0.5

Congratulations! You have successfully installed Rails version 3.2.22 on your Mac.


## Install PostgreSQL

1.  In a new Terminal, enter the following command and press Return:

        brew install postgresql

    Wait for the installation to complete. This will install PostgreSQL and its dependencies.

2.  Start and enable PostgreSQL service by entering the following command and pressing Enter:

        brew services start postgresql

    This will start the PostgreSQL service and configure it to start automatically on system startup.

3.  Enter the following command to check if PostgreSQL is installed successfully:

        postgres -V

    You should see output similar to the following:

        > postgres (PostgreSQL) x.x.x

4.  Start and enable PostgreSQL service by entering the following command:

        brew services start postgresql

    This will start the PostgreSQL service and configure it to start automatically on system startup.

5.  Set up a password for the default PostgreSQL user (postgres) by entering the following command and press Enter to switch to the PostgreSQL user:

        sudo -u postgres psql postgres

    You will now enter the PostgreSQL interactive terminal. Now, set a password for the default user by entering the following command:

        \password postgres

    Follow the prompts to enter and confirm your desired password for the "postgres" user.

    Exit the PostgreSQL interactive terminal

        \q
    
6.  Turn on PostgreSQL service by entering the following command and press Return:

        brew services start postgresql

    This will ensure the PostgreSQL service is running.

7.  Check to see the version of PostgreSQL and verify the connection:

        psql --version

    You should see output similar to the following:

        > psql (PostgreSQL) x.x.x

8.  Now to verify the connection, type the following into your terminal:

        brew services list

    The output should look like this:

        > postgresql@14  started  user  ~/Library/LaunchAgents/homebrew.mxcl.postgresql@14.plist

9.  Configure your Ruby on Rails app to use PostgreSQL by making sure the Rails app's `config/database.yml` file looks like this:

        default: &default
            adapter: postgresql
            encoding: unicode
            pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>
            username: postgres
            password: your_password
            host: localhost

        development:
            <<: *default
            database: your_database_name_development

        production:
            <<: *default
            database: your_database_name_production

    You *might* need to replace "your_password" with the password you set for the "postgres" user in Step 3, keep that in mind!

That's it! You have set up PostgreSQL, configured a password for the default user, and performed necessary steps to use PostgreSQL in your app. Remember to restart your Rails server or reload your app's environment.


## Install Node.js

1.  Open a Terminal window and enter the following:

        brew install node

    Homebrew will download and install the latest stable version of Node.js along with npm (Node Package Manager).

2.  To check if Node.js is installed correctly, enter the following command in Terminal:

        node -v

    You should see the version number of Node.js displayed, indicating a successful installation.

    Additionally, you can also check the version of npm by entering the following command:

        npm -v

    This will display the version number of npm if the installation was successful.


Congratulations! You have successfully installed Node.js on your Mac using Terminal. Now you can start using Node.js to run JavaScript applications and leverage its ecosystem of packages and tools.


## Install Yarn

1.  In Terminal, enter the following command and press Return:

        brew install yarn

2.  Check if Yarn is installed correctly, enter the following command in Terminal:

        yarn --version

    You should see the version number of Yarn displayed, indicating a successful installation.

Congratulations! You have successfully installed Yarn on your Mac using Terminal. Now you can use Yarn as a package manager for JavaScript and Node.js projects, leveraging its features and benefits.


## Installation

1.  Clone the repository:

        git clone <repository-url>


2.  Change into the project directory:
    
        cd <project-directory>


3.




4.


5.


6.


7.


## List of formulae and casks that you can copy and paste right into your terminal and have installed on macOS all at once.
    - Run `brew cleanup` once complete.
    - Some of these items may be deprecated or no longer available.

brew install ack
brew install activemq
brew install adns
brew install aircrack-ng
brew install algol68g
brew install amazon-ecs-cli
brew install ammonite-repl
brew install ansible
brew install ant
brew install antigen
brew install apache-spark
brew install apktool
brew install apr
brew install apr-util
brew install arangodb
brew install archey
brew install aria2
brew install arp-scan
brew install arping
brew install asciidoc
brew install asciinema
brew install aspell
brew install assimp
brew install astyle
brew install atk
brew install atool
brew install augeas
brew install autoconf
brew install autoconf-archive
brew install autoenv
brew install autogen
brew install autojump
brew install automake
brew install autossh
brew install avrdude
brew install aws-elasticbeanstalk
brew install aws-sdk-cpp
brew install aws-shell
brew install awscli
brew install axel
brew install azure-cli
brew install bash
brew install bash-completion
brew install bash-git-prompt
brew install bazaar
brew install bazel
brew install berkeley-db
brew install bfg
brew install bind
brew install binutils
brew install binwalk
brew install bison
brew install boost
brew install boost-python
brew install boot2docker
brew install bower
brew install brew-cask-completion
brew install byobu
brew install c-ares
brew install cabal-install
brew install cabextract
brew install caddy
brew install cairo
brew install calc
brew install capstone
brew install carthage
brew install cask
brew install casperjs
brew install cassandra
brew install ccache
brew install ccat
brew install certbot
brew install cgal
brew install chisel
brew install chromedriver
brew install chruby
brew install clamav
brew install clang-format
brew install clisp
brew install cloc
brew install cloog
brew install cmake
brew install cmatrix
brew install cmus
brew install cntlm
brew install cocoapods
brew install colordiff
brew install conan
brew install consul
brew install coreutils
brew install couchdb
brew install cowsay
brew install cpanminus
brew install cppcheck
brew install cryptopp
brew install crystal-lang
brew install cscope
brew install csshx
brew install ctags
brew install ctop
brew install curl
brew install cvs
brew install dark-mode
brew install dbus
brew install ddrescue
brew install dex2jar
brew install dfu-programmer
brew install dfu-util
brew install dialog
brew install diff-so-fancy
brew install diffutils
brew install direnv
brew install dmd
brew install dnsmasq
brew install docker
brew install docker-completion
brew install docker-compose
brew install docker-compose-completion
brew install docker-machine
brew install docker-machine-completion
brew install docker-machine-driver-xhyve
brew install docker-machine-nfs
brew install dockutil
brew install doctl
brew install dos2unix
brew install doxygen
brew install dpkg
brew install duti
brew install e2fsprogs
brew install ed
brew install eigen
brew install elasticsearch
brew install elinks
brew install elixir
brew install elm
brew install emacs
brew install emscripten
brew install enca
brew install erlang
brew install etcd
brew install ettercap
brew install exercism
brew install exiftool
brew install expat
brew install expect
brew install ext4fuse
brew install fabric
brew install fasd
brew install fcrackzip
brew install fdk-aac
brew install fdupes
brew install ffmpeg
brew install fftw
brew install figlet
brew install filebeat
brew install findutils
brew install fish
brew install flac
brew install flake8
brew install flex
brew install flow
brew install fltk
brew install flyway
brew install fontconfig
brew install fontforge
brew install foremost
brew install fortune
brew install fping
brew install freeglut
brew install freerdp
brew install freetds
brew install freetype
brew install fswatch
brew install fzf
brew install gauge
brew install gawk
brew install gcc
brew install gd
brew install gdal
brew install gdb
brew install gdbm
brew install gdk-pixbuf
brew install gdrive
brew install geckodriver
brew install gedit
brew install geoip
brew install geos
brew install gettext
brew install gflags
brew install ghc
brew install ghostscript
brew install ghq
brew install gibo
brew install giflib
brew install gifsicle
brew install gist
brew install git
brew install git-cola
brew install git-credential-manager
brew install git-crypt
brew install git-extras
brew install git-flow
brew install git-flow-avh
brew install git-lfs
brew install git-quick-stats
brew install git-review
brew install git-standup
brew install git-town
brew install giter8
brew install gitlab-ci-multi-runner
brew install glew
brew install glfw
brew install glib
brew install glide
brew install glm
brew install global
brew install glog
brew install gmp
brew install gnu-getopt
brew install gnu-indent
brew install gnu-sed
brew install gnu-tar
brew install gnu-which
brew install gnupg
brew install gnuplot
brew install gnuradio
brew install gnutls
brew install go
brew install goaccess
brew install gobject-introspection
brew install godep
brew install googler
brew install gource
brew install gpac
brew install gperftools
brew install gpg-agent
brew install grace
brew install gradle
brew install grafana
brew install grails
brew install graphicsmagick
brew install graphviz
brew install grc
brew install grep
brew install grip
brew install groovy
brew install grpc
brew install grunt-cli
brew install gsl
brew install gst-plugins-bad
brew install gst-plugins-good
brew install gstreamer
brew install gtk+
brew install gtk+3
brew install guetzli
brew install guile
brew install gzip
brew install hadoop
brew install handbrake
brew install haproxy
brew install harfbuzz
brew install hashcat
brew install haskell-stack
brew install hbase
brew install heroku
brew install highlight
brew install hive
brew install hping
brew install htop
brew install htop-osx
brew install httpie
brew install httrack
brew install hub
brew install hugo
brew install hunspell
brew install hydra
brew install hyper
brew install icdiff
brew install icu4c
brew install ideviceinstaller
brew install iftop
brew install imagemagick
brew install imagesnap
brew install infer
brew install influxdb
brew install intltool
brew install ios-deploy
brew install ios-sim
brew install ios-webkit-debug-proxy
brew install ipcalc
brew install iperf
brew install iperf3
brew install ipfs
brew install ipmitool
brew install iproute2mac
brew install ipython
brew install irssi
brew install isl
brew install ispell
brew install jansson
brew install jasper
brew install jemalloc
brew install jenkins
brew install jenv
brew install jetty
brew install jmeter
brew install john
brew install jpeg
brew install jpeg-turbo
brew install jpegoptim
brew install jq
brew install jruby
brew install jsoncpp
brew install kafka
brew install kafkacat
brew install kibana
brew install kops
brew install kotlin
brew install kubernetes-cli
brew install kubernetes-helm
brew install lame
brew install lastpass-cli
brew install lcov
brew install ldid
brew install leiningen
brew install less
brew install leveldb
brew install lftp
brew install libass
brew install libassuan
brew install libav
brew install libconfig
brew install libcouchbase
brew install libdnet
brew install libdvdcss
brew install libev
brew install libevent
brew install libffi
brew install libgcrypt
brew install libgit2
brew install libgpg-error
brew install libiconv
brew install libimobiledevice
brew install libksba
brew install libmagic
brew install libmemcached
brew install libmicrohttpd
brew install libmpc
brew install libogg
brew install libpcap
brew install libplist
brew install libpng
brew install libpqxx
brew install librdkafka
brew install libressl
brew install librsvg
brew install libsass
brew install libsndfile
brew install libsodium
brew install libssh2
brew install libtasn1
brew install libtensorflow
brew install libtermkey
brew install libtiff
brew install libtool
brew install libunistring
brew install libusb
brew install libusb-compat
brew install libuv
brew install libvirt
brew install libvorbis
brew install libvpx
brew install libxml2
brew install libxmlsec1
brew install libxslt
brew install libyaml
brew install libzip
brew install links
brew install little-cms2
brew install llvm
brew install lmdb
brew install lnav
brew install logstash
brew install lolcat
brew install lrzsz
brew install lua
brew install luajit
brew install lynx
brew install lz4
brew install lzip
brew install lzlib
brew install lzo
brew install m-cli
brew install m4
brew install mackup
brew install macvim
brew install make
brew install makedepend
brew install mariadb
brew install markdown
brew install mas
brew install maven
brew install mcrypt
brew install md5deep
brew install md5sha1sum
brew install mecab
brew install mecab-ipadic
brew install media-info
brew install megatools
brew install memcached
brew install mercurial
brew install micro
brew install midnight-commander
brew install minicom
brew install minimal-racket
brew install minio
brew install miniupnpc
brew install mit-scheme
brew install mitmproxy
brew install mkvtoolnix
brew install mobile-shell
brew install mongodb
brew install mono
brew install moreutils
brew install mosquitto
brew install mpd
brew install mpfr
brew install mpg123
brew install mpich
brew install mplayer
brew install mpv
brew install msgpack
brew install mtr
brew install multitail
brew install mutt
brew install mvnvm
brew install mycli
brew install mysql
brew install mysql-connector-c
brew install mysql-utilities
brew install n
brew install nano
brew install nasm
brew install ncdu
brew install ncftp
brew install ncurses
brew install neo4j
brew install neofetch
brew install neovim
brew install net-snmp
brew install netcat
brew install netpbm
brew install nghttp2
brew install nginx
brew install ngrep
brew install nikto
brew install ninja
brew install nkf
brew install nmap
brew install node
brew install node-build
brew install nodebrew
brew install nodenv
brew install npth
brew install ntfs-3g
brew install nuget
brew install numpy
brew install nvm
brew install oath-toolkit
brew install ocaml
brew install offlineimap
brew install oniguruma
brew install opam
brew install open-mpi
brew install open-ocd
brew install openconnect
brew install openexr
brew install openjpeg
brew install openshift-cli
brew install openssh
brew install openssl
brew install openvpn
brew install optipng
brew install opus
brew install osquery
brew install ossp-uuid
brew install p11-kit
brew install p7zip
brew install packer
brew install pandoc
brew install pandoc-citeproc
brew install pango
brew install parallel
brew install pass
brew install pcre
brew install pcre2
brew install pdf2htmlex
brew install peco
brew install percona-server
brew install percona-toolkit
brew install perl
brew install pgcli
brew install phantomjs
brew install pidcat
brew install pidgin
brew install pidof
brew install pigz
brew install pinentry
brew install pinentry-mac
brew install pixman
brew install pkg-config
brew install planck
brew install plantuml
brew install platformio
brew install pngcrush
brew install pngquant
brew install polipo
brew install poppler
brew install portaudio
brew install portmidi
brew install postgis
brew install postgresql
brew install pre-commit
brew install privoxy
brew install procmail
brew install prometheus
brew install protobuf
brew install proxychains-ng
brew install pssh
brew install pstree
brew install purescript
brew install putty
brew install pv
brew install pwgen
brew install py2cairo
brew install pyenv
brew install pyenv-virtualenv
brew install pyenv-virtualenvwrapper
brew install pygobject3
brew install pygtk
brew install pypy
brew install pypy3
brew install pyqt
brew install python
brew install python3
brew install qcachegrind
brew install qemu
brew install qpdf
brew install qrencode
brew install qt
brew install rabbitmq
brew install radare2
brew install ranger
brew install rbenv
brew install rbenv-bundler
brew install rbenv-default-gems
brew install rbenv-gemset
brew install rclone
brew install rdesktop
brew install re2c
brew install readline
brew install reattach-to-user-namespace
brew install reaver
brew install redis
brew install rename
brew install repo
brew install rethinkdb
brew install rhino
brew install ripgrep
brew install rlwrap
brew install rocksdb
brew install rpm
brew install rpm2cpio
brew install rsync
brew install rtmpdump
brew install ruby
brew install ruby-build
brew install ruby-install
brew install rust
brew install s3cmd
brew install saltstack
brew install sassc
brew install sbcl
brew install sbt
brew install scala
brew install scipy
brew install scons
brew install screen
brew install screenfetch
brew install sdl
brew install sdl_image
brew install sdl_mixer
brew install sdl_ttf
brew install sdl2
brew install sdl2_image
brew install sdl2_mixer
brew install sdl2_ttf
brew install selenium-server-standalone
brew install sfml
brew install shadowsocks-libev
brew install shared-mime-info
brew install shellcheck
brew install shtool
brew install siege
brew install sip
brew install sl
brew install sloccount
brew install smartmontools
brew install smpeg
brew install snappy
brew install socat
brew install solr
brew install sonar-scanner
brew install sonarqube
brew install source-highlight
brew install sourcekitten
brew install sox
brew install spark
brew install speedtest-cli
brew install sphinx
brew install sphinx-doc
brew install sqlite
brew install sqlmap
brew install squid
brew install ssh-copy-id
brew install sshfs
brew install sshuttle
brew install sslscan
brew install stow
brew install stunnel
brew install subversion
brew install supervisor
brew install swagger-codegen
brew install swi-prolog
brew install swiftformat
brew install swiftgen
brew install swiftlint
brew install swig
brew install syncthing
brew install sysbench
brew install sysdig
brew install szip
brew install ta-lib
brew install task
brew install tbb
brew install tcl-tk
brew install tcpflow
brew install tcpreplay
brew install tcptraceroute
brew install telegraf
brew install terminal-notifier
brew install terminator
brew install terraform
brew install terragrunt
brew install tesseract
brew install testdisk
brew install testssl
brew install texi2html
brew install texinfo
brew install the_silver_searcher
brew install thefuck
brew install theora
brew install thrift
brew install tidy-html5
brew install tig
brew install tldr
brew install tmate
brew install tmux
brew install tomcat
brew install tor
brew install transmission
brew install trash
brew install tree
brew install typesafe-activator
brew install typescript
brew install uncrustify
brew install unison
brew install unixodbc
brew install unrar
brew install unzip
brew install upx
brew install usbmuxd
brew install v8
brew install vagrant-completion
brew install valgrind
brew install vault
brew install vegeta
brew install vim
brew install w3m
brew install wakeonlan
brew install watch
brew install watchman
brew install wdiff
brew install webkit2png
brew install webp
brew install webpack
brew install weechat
brew install wget
brew install wine
brew install winetricks
brew install wireshark
brew install wrk
brew install wxmac
brew install wxpython
brew install x264
brew install x265
brew install xcproj
brew install xctool
brew install xhyve
brew install xmlstarlet
brew install xpdf
brew install xz
brew install yarn
brew install yasm
brew install you-get
brew install youtube-dl
brew install z
brew install zbar
brew install zenity
brew install zeromq
brew install zlib
brew install zookeeper
brew install zopfli
brew install zplug
brew install zsh
brew install zsh-autosuggestions
brew install zsh-completions
brew install zsh-syntax-highlighting


## yarn / npm 

Yarn and npm are both package managers for JavaScript and Node.js projects, but they have some differences in terms of features, performance, and compatibility. Here's an overview of the differences and when it's appropriate to use each:

Package Management:

npm (Node Package Manager): npm is the default package manager that comes bundled with Node.js. It has been around for a long time and is widely used in the JavaScript ecosystem.
Yarn: Yarn is a package manager developed by Facebook. It was created to address some limitations of npm and provide additional features.
Dependency Resolution and Performance:

Yarn: Yarn introduced a more deterministic dependency resolution algorithm, which ensures that the same packages are installed consistently across different machines. It also features a caching mechanism that improves installation speed, especially for large projects or when installing dependencies repeatedly.
npm: npm has made significant improvements in dependency resolution and performance in recent versions. It now uses a lockfile (package-lock.json) to provide more deterministic installations and optimize performance.
Package Registry:

npm: npm has a large and mature package registry called the npm registry (https://www.npmjs.com). It hosts a vast number of open-source packages for JavaScript and Node.js development.
Yarn: Yarn is compatible with the npm registry and can seamlessly install packages from it. It also has its own package registry called the Yarn registry (https://yarnpkg.com/packages).
User Experience and Features:

Yarn: Yarn provides a more modern and user-friendly command-line interface (CLI) compared to npm. It has features like interactive prompts, detailed error messages, and parallel package installations.
npm: npm has been continuously improving its CLI and provides a solid user experience. It offers a wide range of commands and features, including built-in scripts and package publishing capabilities.
When to use Yarn or npm:

Yarn is a good choice if you value deterministic dependency resolution, faster installations, and a modern CLI experience.
npm is a solid option if you prefer using the default package manager, want compatibility with the broader JavaScript ecosystem, and don't have specific requirements that Yarn provides.
Using Both in an Application:

In many cases, you can use either Yarn or npm for your project without any issues.
It's possible to mix Yarn and npm commands in a project if needed. For example, you could use Yarn for package installation (yarn install) but use npm for running scripts (npm run).
It's essential to make sure the lockfile (yarn.lock or package-lock.json) is committed to version control to ensure consistent installations regardless of the package manager used.
Ultimately, the choice between Yarn and npm depends on your preferences, project requirements, and team conventions. Both package managers are widely used and supported, so you can choose the one that aligns best with your needs.
symlink
=======

Feed it yaml; it spits symbolic links.  

`symlink example.yml`  

symlink is a simple tool which creates directories and symbolic links based on what it finds in a yaml file. Why? Because creating symbolic links is tedious and I find it helpful to store my directory structure in a text file for quick re-building (obvious use-case: dotfiles).  

See 
[example.yml](https://github.com/suderman/symlink/blob/master/example.yml) to get an idea of how it works.  

Install
-------
Open a terminal and run this command:  

`curl https://raw.github.com/suderman/symlink/master/install.sh | sh`  

### Or, clone the repo
Download and copy `symlink` somewhere in your path, ie: 

`git clone https://github.com/suderman/symlink.git`  
`cp symlink/symlink /usr/local/symlink`  

Options
-------
symlink is polite and won't overwrite existing files without
asking (exception is symbolic links; it'll overwrite those without
asking). You can skip this check by passing the -f option:  

`symlink -f example.yml`  

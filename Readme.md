## Installation Instructions.
<pre>
brew cask install virtualbox;
brew cask install vagrant;
vagrant up;
vagrant ssh;
cd /vagrant/projects;
git clone <repo>;
</pre>
## Additional Notes
Rails/ruby is not installed by default, as rvm will pick up & instruct you based on the `.ruby-gemset`/`.ruby-version` for projects that have those files in the repo.

port 3000 is automatically forwarded so you can use your host browser. just need to run rails on all interfaces (`-b 0.0.0.0`)


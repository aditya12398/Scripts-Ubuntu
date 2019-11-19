echo ""
echo "---------------Configuring mpich---------------"
echo ""
sudo /home/slimshady/Downloads/InstallationFiles/mpich-3.3.1/configure --enable-g=dbg,mem,log --with-java=$JAVA_HOME 2>&1 | sudo tee c.log
echo ""
echo "---------------Running sudo make---------------"
echo ""
sudo make -j 4 VERBOSE=1 2>&1 | sudo tee m.log
echo ""
echo "---------------Running sudo make install---------------"
echo ""
sudo make install -j 4 |& sudo tee mi.log
echo ""
echo "---------------End of Script---------------"
echo ""

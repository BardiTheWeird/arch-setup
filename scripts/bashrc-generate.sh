SWAY=1
I3=0

if [[ -f .bashrc ]]
then
    echo "cleaning up .bashrc..."
    rm .bashrc
fi

files='00_partial_noninteractive.sh 10_partial_exa.sh'

if [[ $SWAY -eq 1 ]]
then
    echo "sway desktop is going to be included"
    files="$files 50_partial_exec_sway.sh"
fi

if [[ $I3 -eq 1 ]]
then
    echo "i3 desktop is going to be included"
    files="$files 50_partial_exec_i3.sh"
fi


for i in $files
do
    echo "appending bash-profiles/$i..."
    cat bash-profiles/$i >> .bashrc
done

echo >> .bashrc


echo ".bahrc generated at $(pwd)/.bashrc"

##############################################################
# @Author:  John Echavarria - GFT                            #
# @Version: 1.0                                              #
# @Descripcion: Clone a repo and add files.                  #
# @Fecha: 23 October, 2023.                                  #
##############################################################
git clone https://${{ secrets.TOKEN }}@github.com/jfechava-org/${{ env.REPO_NAME }}.git
echo ${{ env.REPO_NAME }}
cd ${{ env.REPO_NAME }}
git init
touch readme.md
git add .
git commit -m "Added new files to the new repo"
git push 
              

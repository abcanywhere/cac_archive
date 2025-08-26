rm -f caimweb/archive/caimdb*
mysqldump -uappuser -pcac_br1dge caimdb > caimweb/archive/caimdb.$(date +'%Y%m%d')
# mysql -uappuser -pcac_br1dge -Dcaimdb < schedule.sql
# git to save archive
cd caimweb/archive
# Add all changes to the staging area
git add .
# Get current date and time for commit message
COMMIT_MESSAGE="Automated commit on $(date +'%Y-%m-%d')"
# Commit the changes
git commit -m "$COMMIT_MESSAGE"
# Push changes to the remote repository (assuming 'origin' and 'main' branch)
git push origin main

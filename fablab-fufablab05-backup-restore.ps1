

# Only for use with fufablab05 user on ws12.lab.fablab.fau.de
#
# "Synchronize/Backup" Visicut settings dir between local profile and "remote" network drive.
# This is needed as a workaround because we regularly kill the user profile but want to preserve the visicut directory.
# 
#
# Usage: Just start the script, it will automatically detect if backup or restore is the correct thing to do.
#
# 0. Initial condition: Local visicut directory exists and is a git repository.
# 1. Start the script. The script will make a backup.
# 2. Kill the profile directory
# 3. Log in again
# (3b. Maybe accidentally start Visicut. Close it again.)
# 4. Start the script. The script will restore.
# If the local directory doesn't exist or (or is no git repo), copy over f

# Path to .visicut folder used by Visicut.
# Parent folder MUST exist.
$localParent = "C:\users\fufablab05\"
$local = "$localParent\.visicut"

# Path where the backup is stored.
$remoteParent = "W:\visicut-backup-AUTOMATIC\"
$remote = "$remoteParent\.visicut"




# Check if the local .git directory exists
if (Test-Path "$local\.git") {
    #################################
    # BACKUP: Local ---> Network
    #################################
    echo "Backup from local visicut to network drive."
    # If .git exists, remove the remote directory if it exists
    if (Test-Path $remoteParent) {
        Remove-Item $remoteParent -Recurse -Force
    }
    # Copy the local directory to the remote
	mkdir $remoteParent
    Copy-Item $local -Destination $remoteParent -Recurse

} else {
    #################################
    # Restore: Network --> Local
    #################################
    echo "Restore backup from network drive to local visicut."
    # If .git does not exist, rename the local directory to "-old-autosave" if it exists
    if (Test-Path $local) {
		try {
			Rename-Item -Path $local -NewName ".visicut-old-autosave"
		}
		catch {
			# If that failed, delete the local directory
			Remove-Item $local -Recurse -Force
		}
    }
    # Copy the remote directory to the local
    Copy-Item $remote -Destination $localParent -Recurse
}

echo "Done"
Read-Host -Prompt "Press any key to continue"
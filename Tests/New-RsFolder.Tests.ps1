Describe "New-RsFolder" {
    Context "Creat Folder with minimun parameters"{
        $folderName = 'SutFolderMinParameters' + [guid]::NewGuid()
        New-RsFolder -Path / -FolderName $folderName
        $folderList = Get-RsFolderContent -Path /
        $folderCount = ($folderList | Where-Object name -eq $folderName).Count

        It "Should be a new folder" {
            $folderCount | Should Be 1
        }
    }
}